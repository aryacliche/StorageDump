#include<simplecpp>

main_program{
    int a, b, c, n;
    cin>>n>>a>>b>>c;
    repeat(n){
        int x;
        cin>>x;
        cout<<(a*x*x+b*x+c)<<endl;
    }
}
