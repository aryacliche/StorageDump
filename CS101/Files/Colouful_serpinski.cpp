#include <simplecpp>


void sierpinski(double s, int t, Rectangle a);
main_program
{
    double s;
    int t;
    cin >> s >> t;
    initCanvas();
    Rectangle a(250,250,1);
    a.setFill(true);
    sierpinski(s, t, a);
    hide();
    wait(2);
}

void draw(double s, int t, Rectangle &a){
    if(t==1){
        repeat(3){
            for(int i=0;i<s*10;i++){
                a.forward(0.1);
                a.setColor(COLOR(255-i%255, (i*10)%255, (i+152)%255));
                a.imprint();
            }
            wait(0.1);
            a.left(120);
        }
        return;
    }
    draw(s/2,t-1, a);
    a.forward(s/2);
    draw(s/2,t-1, a);
    a.left(120);
    a.forward(s/2, a);
    a.right(120);
    draw(s/2,t-1, a);
    a.right(120);
    a.forward(s/2);
    a.left(120);
}

void sierpinski(double s, int t, Rectangle &a){
    a.right(90);
    a.forward(s/2/1.732);
    a.right(90);
    a.forward(s/2);
    a.right(180);
    draw(s,t,a);
    getClick();
}
