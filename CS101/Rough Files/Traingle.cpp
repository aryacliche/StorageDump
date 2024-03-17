#include<simplecpp>

main_program{
    cout<<"Bolo kitne stars chahiye in the base"<<endl;
    int n;
    cin>>n;
    /*Your base has n asterisks with spaces in between. Assuming it to be touching the left margin, we know (n-i) spaces have to
    be left before each row where i is the row number */
    int i=1;
    repeat(n){
        repeat(n-i)
            cout<<" ";
        repeat(i)
            cout<<"* ";
        i++;
        cout<<endl;
    }
}
