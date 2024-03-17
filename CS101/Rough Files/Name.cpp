#include<simplecpp>

main_program{
    turtleSim();
    right(-60);
    //first A
    forward(20);
    repeat(3)
    {
        forward(20);
        right(120);
        wait(0.1);

    }
    right(60);
    penUp();
    forward(20);
    penDown();
    right(60);
    forward(20);
    left(60);
    penUp();
    forward(5);
    penDown();

    //R
    left(90);
    forward(17.32);
    repeat(3)
    {
        forward(17.32);
        right(120);
        wait(0.1);

    }
    right(120);
    forward(34.64);
    left(60);
    penUp();
    forward(5);
    penDown();
    wait(10);
}
