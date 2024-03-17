#include<simplecpp>

main_program{
    initCanvas("projectile", 500, 500);

    int posn=getClick();
    Circle b(posn/65536, posn%65536, 10);
    b.penDown();
    double vx=1, vy=-1;
    do{
        while(b.getX()<=500&&b.getY()<=500&&b.getX()>=0&&b.getY()>=0){
            b.move(vx, vy);
            vy+=0.01;
        }
        if(b.getX()>=500||b.getX()<=0) vx=-vx;
        else vy=-vy;
    }while(true);
}
