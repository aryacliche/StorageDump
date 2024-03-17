#include<simplecpp>

main_program{
    int n;
    cin>>n;
    repeat(n) //First line of the Z
        cout<<"*";
    cout<<endl;
    int i=n-2;
    repeat(n-2){ //Diagonal part of the Z
        repeat(i)
            cout<<" ";
        cout<<"*"<<endl;
        i--;
    }
    repeat(n) //Last line of the Z
        cout<<"*";
}
