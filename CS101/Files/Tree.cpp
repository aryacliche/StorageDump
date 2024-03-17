#include<simplecpp>


void tree(Turtle &t, int n){
    if(n==0) return;

    //right branch
    t.right(36);
    t.forward(20);
    tree(t,n-1);
    t.penUp(); t.right(180); t.forward(20); t.left(180); t.penDown(); //back to the original position

    //left branch
    t.left(20+36);
    t.forward(20);
    tree(t,n-1);
    t.penUp(); t.right(180); t.forward(20); t.left(180); t.penDown();//back to the original position
    t.right(20); //back to original orientation
}

int main(){
    initCanvas();
    Turtle t;
    t.left(90);
    t.forward(50);
    int n; //no. of levels in tree
    cin>>n;
    tree(t, n);
    getClick();
    return 0;
}
