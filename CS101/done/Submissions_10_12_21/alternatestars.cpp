#include<simplecpp>

main_program{
    int n;
    cin>>n;
    repeat(n){ //Decides the number of rows in the output
        repeat(n-1){ // Odd lines have n-1 stars
            cout<<"* ";
        }
        cout<<"*"<<endl<<" ";
        repeat(n-2){ //Even lines have n-2 stars
            cout<<"* ";
        }
        cout<<"*"<<endl;
    }
}

