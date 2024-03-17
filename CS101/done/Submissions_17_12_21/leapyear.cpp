#include<simplecpp>

main_program{
    int n; //We input the year that user wants to check
    cin>>n; //we did it! We should be proud of ourselves
    if(n%4==0&&n%100!=0||n%400==0) cout<<"Yes"; //If a number is divisible by 4 and not 100 or if it is divisible by 400, then it is a leap year. Note how a number just divisible by 100 is exlcuded. Also note how we used precedence of logical operators to our benefit
    else cout<<"No"; //In case it is divisible by 100 and not 400 or it is not at all a multiple of 4
}
