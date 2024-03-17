#include<simplecpp>

main_program{
    initCanvas("projectile", 500, 500);
    int p=getClick();
    Circle c(p/65536, p%65536, 10);
    c.penDown();

    double vx=1, vy=-1, g=0.01;
    repeat(200){
        c.move(vx,vy);
        vy+=g;
        wait(0.01);
    }
    getClick();
}
