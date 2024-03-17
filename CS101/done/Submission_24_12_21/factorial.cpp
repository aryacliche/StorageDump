#include<simplecpp>

main_program{
    int n;
    cin>>n;
    int fact=1; //factorial has to be initialised to 1
    int i=n; //Temporary variable which we can decrement

    repeat(n-1){ //We run the loop (n-1) times as we want to go from n to 1
        fact*=i; //We start from n and then multiply each term till 1
        i--;
    }
    cout<<fact;
}
