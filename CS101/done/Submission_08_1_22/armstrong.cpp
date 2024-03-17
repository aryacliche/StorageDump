#include<simplecpp>

int armstrong(int n){
    int ctr=0; //stores number of armstrong numbers encountered
    int i=1; //This stores the number being studied at any point
    while(true){ //We don't know how long it will take to reach the nth number thus we can only make an infinite loop
        double sum=0, dig=0; //sum=armstrong sum and dig=number of digits in i
        int temp=i; //temporary variable
        while(temp>0){ //we are calculating the number of digits in i
            dig++;
            temp/=10;
        }
        //Now we have the total number of digits in i
        temp=i; //reusing the same temporary variable for another use
        while(temp>0){ //Now we are finding the sum of powers of digits in i
            int r=temp%10;
            sum+=ceil(pow(r,dig));
            temp/=10;
        }
        if(sum==i) ctr++; //If condition is satisfied, counter is incremented
        if(ctr==n) break; //If we reach the nth number, our loop ends
        i++; //To move on to the next number
    }
    return i;
}
