#include<simplecpp>

main_program{
    int n;
    cin>>n;
    turtleSim();
    if(n%2==0){
        repeat(3){
            forward(100);
            left(120);
        }
    }
    else{
        repeat(4){
            forward(100);
            right(90);
        }
    }
    getClick();
}
