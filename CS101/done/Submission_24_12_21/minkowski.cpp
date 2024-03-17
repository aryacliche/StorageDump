#include<simplecpp>

main_program{
    int n, p;

    cin>>n>>p; //We now have the number of terms and the powers to which they would be raised
    double sum=0; //This holds the minkowaski difference
    repeat(n){
        double u,v;
        cin>>u>>v; //We input the values of u and v
        double r; //This holds the absolute value of the difference
        if(u>v) r=u-v;
        else r=v-u;
        double sum1=pow(r, p); //The individual terms
        sum+=sum1; //We add each term to the total at the end of every iteration
    }

    sum=pow(sum,1.0/p); //We now use the pow function to find the pth root of the sum and update the value of sum

    cout<<fixed;
    cout.precision(2); //We set the precision
    cout<<sum;
}
