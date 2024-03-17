#include<simplecpp>

main_program{
    double a, b, c, D; //Since a, b, c can belong to integers we can use double
    cin>>a>>b>>c; //We take in the integral coefficients
    D=b*b-4*a*c;//We calulte the discriminant
    if(D>0) cout<<"real and distinct"; //If D>0, sqrt(D) exists and is >0 thus distinct real roots
    else if(D==0) cout<<"real and same"; //If D=0, same roots
    else cout<<"complex"; //If D<0, We have sqrt(D) as imaginary
}
