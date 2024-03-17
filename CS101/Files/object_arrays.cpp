#include<simplecpp>

main_program{
    initCanvas("Flowers",500, 600);
    /*Circle c[50], s[50], r[50];
    for(int i=0; i<=9;i++){
        c[i]= Circle(200,250+28, 10);
        s[i]=Circle(300,250+28,10);
        r[i]=Circle(250,250-57,10);
        c[i].setFill(true);
        c[i].setColor(COLOR(255*i/10, 255*(10-i)/10,255));
        r[i].setFill(true);
        r[i].setColor(COLOR(255, 255*i/10,255*(10-i)/10));
        s[i].setFill(true);
        s[i].setColor(COLOR(255*(10-i)/10, 255,255*i/10));
    }
    for(int i=0;i<=9;i++){
        c[i].right(36*i);
        s[i].right(36*i);
        s[i].right(180);
        r[i].right(90);
        r[i].left(36*i);
        for(int k=0; k<=100; k++){
            c[i].forward(1);
            c[i].left(1);
            c[i].imprint();
            s[i].forward(1);
            s[i].left(1);
            s[i].imprint();
            r[i].forward(1);
            r[i].left(1);
            r[i].imprint();
        }
        s[i].forward(1000);
        r[i].forward(1000);
        c[i].forward(1000);
    }
    getClick();*/

    /*Circle c[50], s[50], r[50], b[50];
    for(int i=0; i<=9;i++){
        c[i]= Circle(200,250+28, 5);
        s[i]=Circle(300,250+28,5);
        r[i]=Circle(250,250-57,5);
        b[i]= Circle(250,250+57+57, 5);
        c[i+10]= Circle(200,250+28, 5);
        s[i+10]=Circle(300,250+28,5);
        r[i+10]=Circle(250,250-57,5);
        b[i+10]= Circle(250,250+57+57, 5);

        c[i].setFill(true);
        c[i].setColor(COLOR(255*i/10, 255*(10-i)/10,255));
        r[i].setFill(true);
        r[i].setColor(COLOR(255, 255*i/10,255*(10-i)/10));
        s[i].setFill(true);
        s[i].setColor(COLOR(255*(10-i)/10, 255,255*i/10));
        b[i].setFill(true);
        b[i].setColor(COLOR(255*i/10, 255*i/10,255*i/255));
        c[i+10].setFill(true);
        c[i+10].setColor(COLOR(255*i/10, 255*(10-i)/10,255));
        r[i+10].setFill(true);
        r[i+10].setColor(COLOR(255, 255*i/10,255*(10-i)/10));
        s[i+10].setFill(true);
        s[i+10].setColor(COLOR(255*(10-i)/10, 255,255*i/10));
        b[i+10].setFill(true);
        b[i+10].setColor(COLOR(255*i/10, 255*i/10,255*i/255));
    }
    for(int i=0;i<=9;i++){
        c[i].right(36*i);
        c[i].left(30);
        c[i].right(180);
        s[i].right(36*i);
        s[i].right(180+30);
        s[i].right(180);
        r[i].left(90);
        r[i].right(36*i);
        b[i].right(36*i);
        b[i].right(90);
        c[i+10].left(30);
        c[i+10].right(180);
        c[i+10].left(36*i);
        s[i+10].left(36*i);
        s[i+10].left(180-30);
        s[i+10].left(180);
        r[i+10].left(90);
        r[i+10].left(36*i);
        b[i+10].right(90);
        b[i+10].left(36*i);

        for(int k=0; k<=100; k++){
            c[i].forward(1);
            c[i].left(1);
            c[i].imprint();
            s[i].forward(1);
            s[i].left(1);
            s[i].imprint();
            r[i].forward(1);
            r[i].left(1);
            r[i].imprint();
            b[i].forward(1);
            b[i].left(1);
            b[i].imprint();

            c[i+10].forward(1);
            c[i+10].right(1);
            c[i+10].imprint();
            s[i+10].forward(1);
            s[i+10].right(1);
            s[i+10].imprint();
            r[i+10].forward(1);
            r[i+10].right(1);
            r[i+10].imprint();
            b[i+10].forward(1);
            b[i+10].right(1);
            b[i+10].imprint();
        }
        s[i].forward(1000);
        b[i].forward(1000);
        r[i].forward(1000);
        c[i].forward(1000);
        s[i+10].forward(1000);
        r[i+10].forward(1000);
        b[i+10].forward(1000);
        c[i+10].forward(1000);
    }
    getClick();
}*/
    /*Circle c[50], s[50], r[50], b[50];
    for(int i=0; i<=9;i++){
        c[i]= Circle(200,250+28, 5);
        s[i]=Circle(300,250+28,5);
        r[i]=Circle(250,250-57,5);
        b[i]= Circle(250,250+57+57, 5);
        c[i+10]= Circle(200,250+28, 5);
        s[i+10]=Circle(300,250+28,5);
        r[i+10]=Circle(250,250-57,5);
        b[i+10]= Circle(250,250+57+57, 5);

        c[i].setFill(true);
        c[i].setColor(COLOR(255*i/10, 255*(10-i)/10,255));
        r[i].setFill(true);
        r[i].setColor(COLOR(255, 255*i/10,255*(10-i)/10));
        s[i].setFill(true);
        s[i].setColor(COLOR(255*(10-i)/10, 255,255*i/10));
        b[i].setFill(true);
        b[i].setColor(COLOR(255*i/10, 255*i/10,255*i/255));
        c[i+10].setFill(true);
        c[i+10].setColor(COLOR(255*i/10, 255*(10-i)/10,255));
        r[i+10].setFill(true);
        r[i+10].setColor(COLOR(255, 255*i/10,255*(10-i)/10));
        s[i+10].setFill(true);
        s[i+10].setColor(COLOR(255*(10-i)/10, 255,255*i/10));
        b[i+10].setFill(true);
        b[i+10].setColor(COLOR(255*i/10, 255*i/10,255*i/255));
    }
    for(int i=0;i<=9;i++){
        c[i].right(36*i);

        c[i].right(180);
        s[i].right(36*i);

        r[i].left(90);
        r[i].right(36*i);
        b[i].right(36*i);
        b[i].right(90);
        c[i+10].right(180);
        c[i+10].left(36*i);
        s[i+10].left(36*i);
        r[i+10].left(90);
        r[i+10].left(36*i);
        b[i+10].right(90);
        b[i+10].left(36*i);

        for(int k=0; k<=100; k++){
            c[i].forward(1);
            c[i].left(1);
            c[i].imprint();
            s[i].forward(1);
            s[i].left(1);
            s[i].imprint();
            r[i].forward(1);
            r[i].left(1);
            r[i].imprint();
            b[i].forward(1);
            b[i].left(1);
            b[i].imprint();

            c[i+10].forward(1);
            c[i+10].right(1);
            c[i+10].imprint();
            s[i+10].forward(1);
            s[i+10].right(1);
            s[i+10].imprint();
            r[i+10].forward(1);
            r[i+10].right(1);
            r[i+10].imprint();
            b[i+10].forward(1);
            b[i+10].right(1);
            b[i+10].imprint();
        }
        s[i].forward(1000);
        b[i].forward(1000);
        r[i].forward(1000);
        c[i].forward(1000);
        s[i+10].forward(1000);
        r[i+10].forward(1000);
        b[i+10].forward(1000);
        c[i+10].forward(1000);
    }
    getClick();
}*/
Circle l[3], r[3], u[3], d[3];
    for(int i=0;i<=9;i++){

        l[1]=Circle(150,250+56, 5);
        r[1]=Circle(350,250+56,5);
        u[1]=Circle(250,250-114,5);
        d[1]=Circle(250,250+114+114, 5);
        l[2]=Circle(150,250+56, 5);
        r[2]=Circle(350,250+56,5);
        u[2]=Circle(250,250-114,5);
        d[2]=Circle(250,250+114+114, 5);

        l[1].setFill(true);
        l[1].setColor(COLOR(255*i/10, 255*(10-i)/10,255));
        r[1].setFill(true);
        r[1].setColor(COLOR(255, 255*i/10,255*(10-i)/10));
        u[1].setFill(true);
        u[1].setColor(COLOR(255*(10-i)/10, 255,255*i/10));
        d[1].setFill(true);
        d[1].setColor(COLOR(255*i/10, 255*i/10,255*i/10));
        l[2].setFill(true);
        l[2].setColor(COLOR(255*i/10, 255*(10-i)/10,255));
        r[2].setFill(true);
        r[2].setColor(COLOR(255, 255*i/10,255*(10-i)/10));
        u[2].setFill(true);
        u[2].setColor(COLOR(255*(10-i)/10, 255,255*i/10));
        d[2].setFill(true);
        d[2].setColor(COLOR(255*i/10, 255*i/10,255*i/255));

        l[1].right(36*i);
        l[1].right(180);
        r[1].right(36*i);
        u[1].left(90);
        u[1].right(36*i);
        d[1].right(36*i);
        d[1].right(90);
        l[2].right(180);
        l[2].left(36*i);
        r[2].left(36*i);
        u[2].left(90);
        u[2].left(36*i);
        d[2].right(90);
        d[2].left(36*i);

        for(int k=0; k<=100; k++){
            l[1].forward(1);
            l[1].left(1);
            l[1].imprint();
            r[1].forward(1);
            r[1].left(1);
            r[1].imprint();
            u[1].forward(1);
            u[1].left(1);
            u[1].imprint();
            d[1].forward(1);
            d[1].left(1);
            d[1].imprint();

            l[2].forward(1);
            l[2].right(1);
            l[2].imprint();
            r[2].forward(1);
            r[2].right(1);
            r[2].imprint();
            u[2].forward(1);
            u[2].right(1);
            u[2].imprint();
            d[2].forward(1);
            d[2].right(1);
            d[2].imprint();
        }
    }
    getClick();
}
