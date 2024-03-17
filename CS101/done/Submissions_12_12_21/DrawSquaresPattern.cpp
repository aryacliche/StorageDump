#include<simplecpp>

main_program{
    int n;
    cin>>n;
    turtleSim();
    repeat(4){
        repeat(4){
            forward(5);
            left(90);
            wait(0.1);
        }
        right(90);
        forward(n);
    }
    wait(10);
}
