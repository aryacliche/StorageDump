#include<simplecpp>

main_program{
    //Far superior method
    /*int a, b;
    cin>>a>>b;
    int a1=a, b1=b; //Temporary variables to store the original values of a and b
    int gcd;
    //We know that the GCD (a, b)=GCD(a%b, b%a) thus we need not even find which one of a and b is larger although
    //that is still a valid method to go with
    while(true){
        gcd=min(a,b);
        if(a%b==0||b%a==0) break;
        a%=b;
        b%=a;
    }
    cout<<"GCD="<<gcd<<endl;
    cout<<"LCM="<<a1*b1/gcd;
    */


    //If you still wanted to use the minimum and maximum wala method, you can use the following one-
    int a, b;
    cin>>a>>b;
    int a1=a, b1=b; //Temporary variables to store the original values of a and b
    int gcd;
    int m=min(a,b), M=max(a,b); //You can also use if and else statements to find Max and min out of a and b

    while(true){
        gcd=m;
        if(M%m==0) break;
        int t=M%m; //M%m will obviously be smaller than m hence we have to make that the new m and the original m as the new M
        M=m;
        m=t;
    }
    cout<<"GCD="<<gcd<<endl;
    cout<<"LCM="<<a1*b1/gcd;
}
