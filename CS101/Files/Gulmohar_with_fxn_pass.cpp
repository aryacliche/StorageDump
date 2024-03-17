#include<simplecpp>
#include<functional>

//Rishab edit this for better colours
int colorscheme(int c){
    return COLOR(255-c, (150+c)%256, (150+c)%256);
}

void tree(Turtle &t, int n, int &c, std::function<int(int)> f);

int main(){
    initCanvas();
    Turtle t;
    t.penUp();
    t.moveTo(250, 300);
    t.penDown();
    t.left(90);
    t.forward(50);
    int n; //no. of levels in tree
    cin>>n;
    int c=10;
    tree(t, n, c, colorscheme);
    getClick();
    return 0;
}

void tree(Turtle &t, int n, int &c, std::function<int(int)> f){
    if(n==0){
        t.setColor(f(c));
        t.imprint();
        c+=5;
        c%=256;
        return;
    }

    //right branch
    t.right(36);
    t.forward(30);
    tree(t,n-1,c,colorscheme);
    t.penUp(); t.right(180); t.forward(30); t.left(180); t.penDown(); //back to the original position

    //left branch
    t.left(20+36);
    t.forward(20);
    tree(t,n-1,c, colorscheme);
    t.penUp(); t.right(180); t.forward(20); t.left(180); t.penDown();//back to the original position
    t.right(20); //back to original orientation
}
