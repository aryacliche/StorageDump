#include<simplecpp>

main_program{
    turtleSim();
    penUp();
    cout<<"Please enter an angle"<<endl;
    int angle;
    cin>>angle;
    repeat(360/angle){
        forward(100);
        right(90);

        penDown();
        repeat(2){
            forward(100);
            right(90);
            wait(0.005);
        }
        penUp();
        forward(100);
        right(90);
        right(angle);
    }
    wait(3);
}
