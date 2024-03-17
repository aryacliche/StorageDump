#include<simplecpp>

main_program{
    int n;
    cin>>n;
    double sum=0; //This will store the series at every iteration
    repeat(n){ //n root brackets thus we iterate it n times
        sum+=2;
        sum=sqrt(sum); //We update the new value of sum as its own square root
    }
    cout<<fixed;
    cout.precision(2); //For getting the required precision
    cout<<sum;
}
