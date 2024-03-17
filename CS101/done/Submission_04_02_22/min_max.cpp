#include<iostream>

using namespace std;

int calculate(int n, int arr[]){ //This just finds the total number of maximas and minimas present in the array
    int ctr=0;
    for(int i=1; i<n-1; i++){
        if((arr[i-1]>arr[i]&&arr[i]<arr[i+1])||(arr[i-1]<arr[i]&&arr[i]>arr[i+1])){ //If i has a ridge
            ctr++;
        }
    }
    return ctr;
}

int find_ridge(int i, int arr[], int n){ //This just looks at what min value of ridge we can get by toggling the ith value
    int t=arr[i]; //Importance of this step- We always pass array by reference hence we should bring back arr to its original form before returning the value

    //We try to plateau to the left
    arr[i]=arr[i-1];
    int left_changed_ridge=calculate(n, arr);

    //We try to plateau to the right
    arr[i]=arr[i+1];
    int right_changed_ridge=calculate(n,arr);

    arr[i]=t;

    return min(left_changed_ridge, right_changed_ridge);
}

int main(){
    int n;
    cin>>n;
    int arr[n];
    for(int i=0;i<n;i++) cin>>arr[i]; //array is initialised now

    /*It is obvious that if we have a peak/valley, we can just change the value of the extreme value to one of its neighbours to completely neutralise the valley
    Hence we should first make a program that finds the peaks/valleys and then one by one checks the ridge value if we changed the extreme value to either one of its neighbours*/
    int min_ridge=1.0e6;
    for(int i=1; i<n-1; i++){
        if((arr[i-1]>arr[i]&&arr[i]<arr[i+1])||(arr[i-1]<arr[i]&&arr[i]>arr[i+1])){ //If i has a ridge
            int ridge=find_ridge(i, arr, n);
            //cout<<i<<">"<<"ridge="<<ridge<<endl;
            if(ridge<min_ridge) {
                min_ridge=ridge;
                //cout<<i<<endl;
            }
        }
    }
    if(min_ridge==1.0e6) min_ridge=0;
    cout<<min_ridge;
    return 0;
}
