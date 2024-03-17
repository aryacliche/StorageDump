#include<simplecpp>

main_program{
    int n;
    cin>>n;
    int i=0, j=1;
    repeat(n){
        repeat(j)
            cout<<"*";
        cout<<endl;
        int t=j;
        j+=i;
        i=t;
    }
}
