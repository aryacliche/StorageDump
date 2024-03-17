#include<simplecpp>

void graph(int a, int n, Turtle &t, int l){ //l denotes the level number
    //a is the number at our branch currently
    if(l==0){
        if(a==n){
            Text yass(500,600, "Mil gaya");
            yass.setColor(COLOR(255,0,0));
            yass.imprint();
        }
        return;
    }
    if(a==n){
        Text yass(500,600, "Mil gaya");
        yass.setColor(COLOR(255,0,0));
        yass.imprint();
        Rectangle r(t.getX(),t.getY(),50,50);
        r.setFill(true);
        r.setColor(COLOR(0,0,0));
        r.imprint();
    }
    Text yass(t.getX(),t.getY(),a);
    yass.setColor(COLOR((605+3*a)%255,(255+2*a)%255,(150+a)%255));
    yass.imprint();
    //even wala branch
    t.right(7);
    t.forward(40);
    graph(2*a, n, t, l-1);
     t.right(180); t.forward(40); t.left(180+7); //back to the original position and orientation

    if((a-1)%3==0&&a!=1){
        t.left(20);
        t.forward(40);
        graph((a-1)/3, n, t, l-1);
         t.right(180); t.forward(40); t.left(180-20); //back to the original position
    }
}

int main(){
    cout<<"Gimme a number till which you want the tree"<<endl; //This is like a really cool trick brotha
    int n;
    cin>>n;//This will be our really sexy number
    initCanvas("yall", 1000, 1000);

    Turtle t; //We need a turtle for a specific reason
    t.left(90);
    t.penUp();
    graph(1, n,t, 16);
    getClick();
    return 0;
}
