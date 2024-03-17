#include<simplecpp>

main_program{
    turtleSim();
    /*We have to draw a circle with radius of 20 units so assuming we use a 360 sided regular polygon as a substitute for our circle
    Each side will subtend 1 degree at the centre thus each side length=2* 20sin(0.5 degree)=0.3490=0.35*/
    repeat(360){ //This is for the main circle
        forward(0.35);
        left(1);
    }
    repeat(6){ //This is for each of the auxillary circles
        repeat(360){ //Makes the auxillary circle
            forward(0.35);
            right(1);
        }
        penUp();//added because turtle shouldn't scratch the same line twice varna code phat jayega
        repeat(60){ //travels along main circle to reach the starting point of the next auxillary circle
            forward(0.35);
            left(1);
        }
        penDown();
    }
    wait(10);
}
