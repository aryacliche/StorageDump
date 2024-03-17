#include<simplecpp>

int perfect(int n){
    int sum=0, i=1; //i is a variable that goes through all numbers <n
    while(i<n){
        if(n%i==0) sum+=i; //adding divisors to the sum
        i++;
    }
    if(n==sum) return 1;
    return 0; //no need for a 'else' statement as anyways this will only get executed if 'if' is false
}
