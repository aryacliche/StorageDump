#include<simplecpp>

main_program{
    initCanvas();
    Circle c1(200, 200, 50);
    int posn1=getClick();
    int posn2=getClick();
    double x1=posn1/65536, x2=posn2/65536, y1=posn1%65536, y2=posn2%65536; //We have to take these as double else we will have problems in calculating m later on
    Line l1(x1, y1, x2, y2);

    Rectangle r(200, 200, 100, 100);
    double m=(y2-y1)/(x2-x1);
    r.rotate(atan(m));
    getClick();
}
