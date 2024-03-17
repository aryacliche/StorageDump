#include<simplecpp>

main_program{
    double t, x, sum=0; //t is the kth term in a series
    cin>>x;
    t=x;//The first term is x as xcos(x) expands to x-x^3/2!....
    int n;
    cin>>n;
    for(int k=1;k<=n+1;k++){
        sum+=t;
        /*t(k)=(-1)^(k+1) x^(2k-1) / (2k-2)!
        t(k+1)=(-1)^(k+2) x^2k+1 / (2k)! = -t(k) * x * x / (2k)(2k-1) */
        t=-t*x*x/(2*k)/(2*k-1);
    }
    cout<<fixed;
    cout.precision(2);
    cout<<sum;
}
