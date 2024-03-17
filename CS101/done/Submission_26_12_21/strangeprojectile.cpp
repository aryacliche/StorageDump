#include<simplecpp>

main_program{
    //initCanvas("Crazy Projectile", 1920, 1080); //Use this to look at the bounces better though it is much slower
    initCanvas();
    double vx=1, vy1=-1, vy2=-1; //vy1 denotes the current velocity along y axis while vy2 denotes the one that came before
    int posn=getClick();
    int x=posn/65536, y=posn%65536;
    Circle b(x, y, 10); //Our ball is initialised at position of click
    b.penDown();
    repeat(6){ //6 bounces
        do{ //We could have used while loop by intialising our ball slightly above click point
            b.move(vx, vy1);
            vy1+=0.1; //gravity
        }while(b.getY()<y);
        vy1=-vy1; //Now we reflect the velocity
        int t=vy1; //We swap vy1 for sum of vy2 and vy1 while updating vy2 as vy1 for next bounce
        vy1+=vy2;
        vy2=t;
    }
    getClick();
}
