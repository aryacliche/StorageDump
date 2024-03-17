#include<iostream>

using namespace std;

int check_prime(int arr[], int ctr, int a){ //ctr has the number of elements in the array arr
    //cout<<", ctr_incoming="<<ctr;
    bool is_prime=true; //We initially assume that the element a we are checking is prime
    for(int i=0; i<ctr; i++){
        if(a%arr[i]==0)
            is_prime=false;
    }
    if(is_prime==true){
        arr[ctr]=a;

        ctr++;
    }
    //cout<<", ctr_returning="<<ctr;
    return ctr;
}

int main(){
    int n;
    cin>>n;
    int arr[n]; //Maximum number of primes <n
    int ctr=0; //This stores the number of primes we find under n
    for(int a=2; a<=n; a++){
        //cout<<"a="<<a<<", ctr_before=";
        //cout<<ctr<<", ctr_after=";
        ctr=check_prime(arr, ctr, a);
        //cout<<ctr<<endl;
    }

    cout<<ctr;
    return 0;
}
