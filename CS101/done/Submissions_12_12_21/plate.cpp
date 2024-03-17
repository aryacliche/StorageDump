#include<simplecpp>

main_program{
    turtleSim();

    //In order to make our calculations easier we will first start off with a 20 sided polygon
    /*repeat(20){
        forward(30);
        left(180-180/20*18); // We used the formula that an n sided polygon has internal angles as (n-2)/n*180 degrees
        wait(0.1);
    }*/

    //Now we will just make the same shape except draw equilateral triangular spokes to each side

    /*repeat(20){
        forward(30);
        left(120); //At vertex of equilateral triangle's spoke, you have to turn by 180-60
        forward(30);
        right(102); //Can easily be proven by simple geometry Hint- Each interior angle from previous shape was 162 degrees
    }*/

    //The following code is correct but slow so let us make a few approximations to it
    /*repeat(20){
        forward(40);
        repeat(360-120){ //The vertex of each triangle requires you to turn by 120 degrees or 240 degrees in the opposite direction
            forward(0.12);
            right(1);
        }
        forward(40);
        repeat(360-102){
            forward(0.12);
            left(1);
        }
    }*/

    repeat(20){
        forward(40);
        //The earlier version had 360 sided polygon as circle with side length=0.12 thus radius=6.87
        //For a polygon with 180 sides, the same becomes 0.2397 and for that with 16 sides becomes 2.682
        repeat(12){ //The vertex of each triangle requires you to turn by 120 degrees or 240 degrees in the opposite direction
            forward(2.682);
            right(20);
        }
        forward(40);
        repeat(129){
            forward(0.2397);
            left(2);
        }
    }
    wait(10);
}
