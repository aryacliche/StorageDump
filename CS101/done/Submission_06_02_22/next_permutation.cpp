#include<iostream>
#include<cmath>
using namespace std;

void assign_arr(int t[], int arr[], int n){ //assigns elements of arr to t (2nd array to 1st one always)
    for(int i=0;i<n;i++) t[i]=arr[i];

    return;
}

int max_ele(int t[], int k, int n){ //Finds the maximum element present in the last k digits of temp array
    int m=0;
    for(int i=n-k; i<=n-1;i++)
        if(m<t[i])
            m=t[i];
    return m;
}

void swap_ele(int t[], int i, int j){ // We use this to exchange the values of the ith and jth positions of temp[]
    int temp_variable=t[i];
    t[i]=t[j];
    t[j]=temp_variable;
    return;
}

void ascending(int t[], int a, int n){
    for(int k=0; k<a-1; k++){ //We need to do a-1 iterations for a elements of an array
        for(int j=n-a; j<n-1-k;j++){
            if(t[j]>t[j+1])
                swap_ele(t, j, j+1);
        }
    }
    return;
}


int main(){
    int n;
    cin>>n;
    int arr[n];
    for(int i=0;i<n;i++) cin>>arr[i]; //Array is initialised

    /*The permutation is clearly the one that gives the next largest number from the original number if we printed the array in a line
    We should make a function that converts an array to its decimal representation hence we made convert(arr, n);
    Now I think this might be a question on recursion hence our rough algo would look like-
    1. Look at the last 2 digits and exchange them; if the exchange gives a larger convert(arr,n), that's your answer
    2. Else now look at the last 3 digits.
    3. Exhange the 3rd last number with the number just larger than it and then arrange the last 2 digits in ascending order
    4. If that is not possible (i.e. 3rd last number is larger than both 2nd last and last number), do the same with 4th last number and so on.

    So the actual algorithm is as follows-
    1. Take the second last digit and see if it is larger than the last digit- if so, exchange else let it be
    2. Now see if 3rd last digit is max(last, second last, third last)- if so, move on to do the same with 4th last digit
    else- exhange 3rd last digit with number just higher than that number and then arrange following digits in ascending order
    3. Rinse and repeat for more and more digits if needs be*/
    int i=1;
    while(true){

        if(i==n){
            ascending(arr, n, n);
            break;
        } //This is to ensure that once we reach the last state we don't face any problems/

        int temp[n]; //A temporary array to hold the updated array
        assign_arr(temp, arr, n);//Copies arr to temp

        /*cout<<i<<". \n";
        for(int k=0; k<n; k++) cout<<k<<">"<<temp[k]<<endl;
        cout<<endl;*/

        if(arr[n-i-1]>=max_ele(arr, i, n)){
            i++; //Our ith last digit is larger than or equal to every number that comes after that i.e. for us to get a larger number we will have to go to a higher i
        }

        else{
        //Thus now we have to replace the ith digit with the digit present in the following digits which is just larger than the (n-i-1)th index wala element

            int just_higher=max_ele(arr,i, n), index_of_just_higher; //just_higher and index_of_just_higher are self explanatory

            for(int k=n-i; k<=n-1; k++){ //Keep in mind, the element we are going to be swapping with just_higher is sitting at n-i-1th index. Thus we start our loop from n-i upto n-1

                if(just_higher>=arr[k]&&arr[k]>arr[n-i-1]){
                    index_of_just_higher=k;
                    just_higher=arr[k];
                }
            } //with this we have found the element that will replace our n-1-ith indexed element
            //cout<<"For i(where i=no. of digits being swapped-1)="<<i<<", index_of_just_higher="<<index_of_just_higher<<", just_higher="<<just_higher<<endl;
            //Now we have the index of the number just higher than arr[i] which is stored in index_of_just_higher
            //let's swap

            swap_ele(temp, n-i-1, index_of_just_higher); //This changes our temp array by swapping what we wanted

            /*cout<<"After swapping- "<<endl;
            for(int i=0; i<n; i++) cout<<temp[i]<<" ";
            cout<<endl;*/

            //Now it is time to put the last (i-1) digits in ascending order
            ascending(temp, i, n);

            /*cout<<"After ascending- "<<endl;
            for(int i=0; i<n; i++) cout<<temp[i]<<" ";
            cout<<endl;*/

            assign_arr(arr, temp, n); //Now updated the value of arr
            break;
        }
    }

    for(int i=0; i<n; i++) cout<<arr[i]<<" ";

    return 0;
}
