#include<simplecpp>

main_program{
    int x, n, k;
    cin>>x>>n>>k;
    //Since we know that x^n%k=((x%k)^n)%k, it wouldn't hurt to replace x with x%k in case x>>k
    x%=k;
    /*Now let us try to factorise our n. We know that if we do n%2, we will get exponent of x^1 and if we did n/2 after that
    and calculated n%2 again, we would now have the power of x^2 and so on and so forth
    So with each iteration let us try to find the binary equivalent of our n
    while(n>0){
        cout<<n%2;
        n/=2;
    }*/
    //Keep in mind the above code will print the binary code of the number in reverse order i.e. from LSB to MSB
    //Now working off of the same script, we can design our actual program

    int t=x; //this is going to store x^k where k is the iteration number
    int sum=1;
    while(n>0){
        t%=k; //Just to ensure that x^k isn't too large for int
        //Now are we allowed to replace t with t%k?
        /* Yes. Because if we looked at x^n we can write it as x^a.x^b.x^c.... Now x^n%k={(x%k)^a.(x%k)^b.(x%k)^c...}%k
        Also (x%k)=x%k%k%k
        Hence we can write x^n%k={(x%k%k%k...)^a.(x%k%k%k...)^b.(x%k%k%k...)^c}%k */

        int r=n%2; //Exponent of t (either 0 or 1)

        int t_total=1; //This will store the actual (x^k)^r
        if(r==1) t_total=t; //Somehow I suspect pow(t,r) will be complex thus will hamper speed so I just went for a simple if statement

        sum*=t_total; //We need not worry about overflow as t_total=t or 1 and t belongs to [0,k-1] which is well inside defination.
        //Also sum belongs to [0,k-1] as we make sure to use the next step. We know from constraints that k^2 is inside int's size hence no need to sweat
        sum%=k; //Again we use the same property to streamline the code
        t*=t; //The main use of such an exponentiation

        n/=2;
    }
    cout<<sum;
}
