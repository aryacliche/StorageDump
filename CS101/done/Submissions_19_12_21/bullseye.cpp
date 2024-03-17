#include<simplecpp>

main_program{
    initCanvas();
    Circle c1(250,250,180),c2(250,250,140),c3(250,250,100),c4(250,250,60),c5(250,250,20);
    c1.setFill(true);
    c2.setFill(true);
    c3.setFill(true);
    c4.setFill(true);
    c5.setFill(true);

    c1.setColor(COLOR(0,0,0));
    c2.setColor(COLOR(255,255,0));
    c3.setColor(COLOR(0,0,0));
    c4.setColor(COLOR(255,255,0));
    c5.setColor(COLOR(255,0,0));

    getClick();
}
