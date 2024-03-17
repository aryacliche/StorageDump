#include <simplecpp>

main_program{
    int n;
    cin>>n;
    /*The output should be
    1
    1 1
    1 2 1
    1 3 3 1
    1 4 6 4 1
    1 5 10 10 5 1
    etc...*/
    int i=0;
    repeat(n){
        //An interesting property we can use is that all the numbers in the 'i'th row of a pascal traingle are coefficients of binomial approximation of (1+x)^i
        //nCr=(n).(n-1)....(n-r+1)/r.(r-1)....2.1 so we make the numerator and denominators
        int r=0; //This stores which term in each row we are looking at
        repeat(i+1){ //(1+x)^i has i+1 terms always
            int num=1, denom=1; //We now start trying to find the values of numberator and denominator
            int temp_r=r, temp_i=i; //temporary variables
            while(temp_i>i-r){
                num*=temp_i; //
                temp_i--;
            }
            while(temp_r>0){
                denom*=temp_r;
                temp_r--;
            }

            cout<<(num/denom)<<" ";
            r++; //Now we increase the value of r to select next element
        }
        cout<<endl;
        i++; //Now we start off with the next line
    }
}
