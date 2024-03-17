#include<simplecpp>

main_program{
    turtleSim();
    int n; //Number of half spokes=n
    cout<<"Bolo babua kitna spokes chahiye"<<endl;
    cin>>n;

    int angle=14-36/n;
    repeat(2*n){
        forward(35);
        repeat(24){
            forward(1);
            left(10);

        }

        forward(45);
        repeat(36-angle){
            forward(1);
            right(10);

        }

    }
    penUp();
    right(180);
    forward(30);
    left(90);
    penDown();
    repeat(2*n){
        forward(50);
        repeat(24){
            forward(1);
            left(10);

        }

        forward(50);
        repeat(36-angle){
            forward(1);
            right(10);

        }

    }
    penUp();
    forward(200);
    wait(10);
}
