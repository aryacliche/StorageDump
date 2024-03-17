#include<simplecpp>

main_program{
    turtleSim();
    right(90);
    //First attempt- using trajectory equations and everything

    /* First let's assume that the fixed end of the first arm is the origin of a polar coordinate graph
    hence free end(1) is at (59sin(w1t), -59cos(w1t))
    hence free end(2) is at (59sin(w1t)+ 29sinwt(w2t), -59cos(w1t)-29cose(w2t))
    blah blah blah
    finally turtle's trajectory should look like (59sin(w1t)+29sin(w2t)+13sin(w3t)+2.1sin(w4t)+1.7sin(w5t), -blah blah)
    */
    //Too complex for my pea-sized brain so let's try to cheat out of this

    //Second attempt- Making the turtle travel along the pendulum for every small step
    /*We start by assuming our turtle is initially at the centre of the aforementioned system and so let's make it travel the whole way to the free end of last arm
    Radius of curvature is going to be just 1.7 */

    //The problem with this method is the run time- drawing an actual arc every time of 17 degrees is just impractical for the runtime and so we should optimise it

    /*int a1=0, a2=0, a3=0, a4=0; //int ax denotes the angle that is subtended on the free end of xth arm by the (x+1)th arm

    repeat(360){ //Each iteration of this code denotes one tick
        penUp();

        forward(59);
        left(a1);
        forward(29);
        left(a2);
        forward(13);
        left(a3);
        forward(2.1);
        left(a4);
        forward(1.7);
        left(90); //Finally the turtle is at the free end of the last arm looking tangentially to that arm

        penDown();
        repeat(17){ //We turn through 17 degrees
            forward(0.029); //Radius of circumcircle of a 360 sided polygon=1.7 thus each side=0.029
            left(1);
        }

        penUp();
        left(90); //Now starts our return journey
        forward(1.7);
        right(a4+17); //Since we have moved through that angle already
        forward(2.1);
        right(a3);
        forward(13);
        right(a2);
        forward(29);
        right(a1);
        forward(59);
        right(180); //Off to start a new day

        a1+=3;
        a2+=7;
        a3+=11;
        a4+=17; //We have now completed one entire tick so we are updating the values of all angles

        left(2); //Because we know first arm travels with 2 degrees per tick
    } */
    int a1=0, a2=0, a3=0, a4=0; //int ax denotes the angle that is subtended on the free end of xth arm by the (x+1)th arm

    repeat(360){ //Each iteration of this code denotes one tick
        penUp();

        forward(59);
        left(a1);
        forward(29);
        left(a2);
        forward(13);
        left(a3);
        forward(2.1);
        left(a4);
        forward(1.7);
        left(90); //Finally the turtle is at the free end of the last arm looking tangentially to that arm

        penDown();
        forward(1); //We replace our arc from last attempt with a dash of 1 pixel
        right(180);
        forward(1);

        penUp();
        right(90); //Now starts our return journey
        forward(1.7);
        right(a4); //Since we have moved through that angle already
        forward(2.1);
        right(a3);
        forward(13);
        right(a2);
        forward(29);
        right(a1);
        forward(59);
        right(180); //Off to start a new day

        a1+=3;
        a2+=7;
        a3+=11;
        a4+=17; //We have now completed one entire tick so we are updating the values of all angles

        left(2); //Because we know first arm travels with 2 degrees per tick
    }

    wait(30);
}
