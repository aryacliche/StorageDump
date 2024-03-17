#include<iostream>

using namespace std;

void print(int arr[], int n){
    for(int i=0;i<=n;i++) cout<<arr[i]<<endl;
    return;
}

void quicksort(int arr[], int s, int e){
    if(s==e) return;

    //e has the last element thus it has the pivot
    int S[e-s+1], L[s-e+1]; //Max storage is as we have defined
    int s_ctr=0, l_ctr=0; //initialised the 2 counters
    for(int i=s;i<e;i++){
        if(arr[i]>=arr[e]){
            S[s_ctr]=arr[i];
            s_ctr++;
        }
        else{
            L[l_ctr]=arr[i];
            l_ctr++;
        }
    }
    //Now we have successfully divided our original arr[] into 2 arrays L and S
    //Now it is time to re-merge our array

    for(int i=0;i<l_ctr;i++) arr[i]=L[i]; //Keep in mind your l_counter is always 1 ahead of the last element
    arr[l_ctr]=arr[e]; //We put the originally last element in between
    for(int i=0;i<s_ctr;i++) arr[i+l_ctr]=S[i];

    print(arr, e);
    return;
}

int main(){
    int n;
    cin>>n;
    int arr[n];
    for(int i=0;i<n;i++)
        cin>>arr[i]; //We have successfully initialised arr

    /*We are uncreative babus so we will stick to the standard solution-*/
    quicksort(arr, 0, n-1);

    return 0;
}
