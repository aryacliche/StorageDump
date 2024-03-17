#include<simplecpp>

main_program{
    int b1, n1, b2, n2;
    cin>>b1>>n1>>b2>>n2; //We take in the bases and numbers

    int i=0; //This is a variable that corresponds to the power of the base number being multiplied
    int sum=0; //This holds the sum of the 2 numbers
    while(n1>0){
        int r=n1%10; //We get the last digit of n1

        repeat(i){ //This is to multiply each digit with the proper power of base
            r*=b1;
        }

        sum+=r; //We add the digits' products

        n1/=10; //We remove the last digit as these are integers
        i++; //We now update the value of i
    }
    i=0;
    while(n2>0){ //Same process for n2
        int r=n2%10;

        repeat(i){
            r*=b2;
        }

        sum+=r;
        n2/=10;
        i++;
    }
    cout<<sum; //We print the sum
}
