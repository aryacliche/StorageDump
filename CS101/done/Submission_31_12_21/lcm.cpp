#include<simplecpp>

main_program{
    int a,b;
    cin>>a>>b;
    //We could have used brute force but contraints tell us a,b<=10^4 so let us not do that
    int gcd=1, lcm, a_=a, b_=b; //a_ and b_ are temporary variables
    //Using the GCD*LCM=a*b formula
    //To find GCD we just need to use the fact that GCD(a,b)=GCD(a%b,b)=GCD(b%a,a)
    while(1>0){
        if(a_>b_){
            gcd=b_;
            if(a_%b_==0) break;
            a_%=b_;
        }
        else{
            gcd=a_;
            if(b_%a_==0) break;
            b_%=a_;
        }
    }
    lcm=a*b/gcd;
    cout<<lcm;
}
