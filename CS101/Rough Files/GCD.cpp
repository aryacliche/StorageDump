#include<simplecpp>

main_program{
    //Let's try to find GCD
    int a,b, n1, n2, gcd;
    cin>>a>>b;
    if(a>=b){
        n1=a;
        n2=b;
        gcd=b; //In case a is a mutiple of b, the next while loop will never excute hence we make it equal to b beforehand
        while(n1%n2!=0){
            int nextn1=n2;
            int nextn2=n1%n2;
            if(nextn2==0){
                gcd=n2;
                break;
            }
            n1=nextn1;
            n2=nextn2;
        }
        cout<<a*b/gcd;
    }
    else{
        n1=b;
        n2=a;
        gcd=a; //In case b is a mutiple of a, the next while loop will never excute hence we make it equal to a beforehand
        while(n1%n2!=0){
            int nextn1=n2;
            int nextn2=n1%n2;
            if(nextn2==0){
                gcd=n2;
                break;
            }
            n1=nextn1;
            n2=nextn2;
        }
        cout<<a*b/gcd;
    }
}
