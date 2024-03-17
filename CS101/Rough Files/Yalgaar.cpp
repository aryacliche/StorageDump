#include<simplecpp>

main_program{
    initCanvas();
    Circle c1(200, 200, 50);
    int posn1=getClick(), posn2=getClick();
    Turtle Yashodhan;
    Yashodhan.setColor(14);
    Yashodhan.setFill(true);
    Yashodhan.forward(100);

    Line l1(posn1/65536,posn1%65536, posn2/65536, posn2%65536);
    getClick();
}
