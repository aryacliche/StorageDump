#include<simplecpp>

main_program{
    turtleSim();
    repeat(2){ //First we draw the rectangle
        right(90);
        forward(150); //length
        wait(0.1);
        right(90);
        forward(100); //breadth
        wait(0.1);
    }
    repeat(3){ //Then we draw the equilateral triangle
        left(120);
        forward(100);
        wait(0.1);
    }
    left(90); //Now we just try to align the turtle properly
    wait(10);
}
