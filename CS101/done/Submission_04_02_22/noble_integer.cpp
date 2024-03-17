#include<iostream>
using namespace std;

int main(){
    int n;
    cin>>n;
    int A[n];

    for(int i=0;i<n;i++)
        cin>>A[i]; //Our array A is properly initialised now

    int flag=0; //This is what we are going to print

    for(int i=0;i<n;i++){
        int ctr=0;
        for(int j=0;j<n;j++) //We thus take every pair of numbers possible
            if(A[i]<A[j]) ctr++; //We are taking A[i] as our p candidate

        if(ctr==A[i]){
            flag=1; //If we find even a single such valid p, we don't calculate further
            break;
        }
    }

    cout<<flag;
    return 0;
}
