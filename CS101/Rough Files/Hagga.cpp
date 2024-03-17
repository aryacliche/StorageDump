#include<simplecpp>

main_program{
    initCanvas();

    int x=250, y=250;
    /*Letter H
        Rectangle m(x, y, 60, 20);
        Rectangle l(x-30, y, 20, 100);
        Rectangle r(x+30, y, 20, 100);
        m.setFill(true); m.setColor(0);
        r.setFill(true); r.setColor(0);
        l.setFill(true); l.setColor(0); */
     /*Letter A*/
        Rectangle l(x-26.79, y, 103, 20);
        Rectangle r(x+26.79, y,103,20);
        Rectangle m(x,y,53.5,20);
        l.rotate(-1.308);
        r.rotate(-1.832);
        m.setFill(true); m.setColor(0);
        r.setFill(true); r.setColor(0);
        l.setFill(true); l.setColor(0);
    getClick();
}
