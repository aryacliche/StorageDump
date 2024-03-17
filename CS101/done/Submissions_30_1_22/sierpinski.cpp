#include <simplecpp>

void draw(double s, int t){
    if(t==1){
        repeat(3){
            forward(s);
            wait(0.1);
            left(120);
        }
        return;
    }
    draw(s/2,t-1);
    forward(s/2);
    draw(s/2,t-1);
    left(120);
    forward(s/2);
    right(120);
    draw(s/2,t-1);
    right(120);
    forward(s/2);
    left(120);
}

void sierpinski(double s, int t){
    penUp();
    right(90);
    forward(s/2/1.732);
    right(90);
    forward(s/2);
    right(180);
    penDown();
    draw(s,t);
    getClick();
}


