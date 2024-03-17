#include<iostream>
#include<cmath>
using namespace std;

/*void print(int A[][5], int n){
    for(int i=0;i<n; i++){
        for(int j=0; j<n;j++){
            cout<<A[i][j]<<" ";
        }
        cout<<endl;
    }
}*/

void minor_calc(int A[][5], int minor[][5], int i, int n){
    int row=0, column=0; //For minor array
    for(int a=1;a<n;a++){
        //We skip the first row completely
        for(int b=0;b<n;b++){
            if(b==i) continue; //If we get the same column number we just skip it

            minor[row][column]=A[a][b];
            row++;
        }
        row=0;
        column++;
    }
    return;
}

int det(int A[][5],int n){
    if(n==1){ //Base case could have been n=2 but what if we got a singleton matrix?
        return A[0][0];
    }
    int sum=0;
    for(int i=0;i<n;i++){ //We are only going to be studying the top row and that too with a skewed numbering that starts from 0 instead of 1 for our convenience
        //We need to find the minor of A[0][i] before moving forward
        int minor[n-1][5];
        minor_calc(A, minor, i, n); //minor is our temporary variable which is initialised due to pass by reference

        /*cout<<i<<". \n";
        print(minor, n-1);
        cout<<"-------------"<<endl;*/

        int det_minor=det(minor, n-1);

        int det_cofactor=det_minor*pow(-1,i); //Since we are only in the first row, we need not look into row value seperately
        sum+=A[0][i]*det_cofactor;
    }
    return sum;
}

int main(){
    int n;
    cin>>n;
    int A[n][5]; //We have declared our array successfully

    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            cin>>A[i][j];
        }
    } //A is now initialised

    int value=det(A,n);
    cout<<value;
    return 0;
}
