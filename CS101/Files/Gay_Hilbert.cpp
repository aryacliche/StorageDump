#include <simplecpp>
void hilbert(double s, int t, int angle, int &c, Rectangle &r);
main_program
{
    double s;
    int t;
    cin >> s >> t;
    initCanvas();
    Rectangle r(10,10,1,1);
    int c=10;
    hilbert(s, t, 90, c,r);
    getClick();
    wait(2);
}

void draw(Rectangle &r, int &c, int s){
    for(int j=0;j<s;j++){
                r.forward(1);
                r.setColor(COLOR((c+50)%255,(c)%255,(c+50)%255));
                r.imprint();
                c+=1;
                c%=200;
            }
}

void hilbert(double s, int t, int angle, int &c, Rectangle &r){
    //Base case will obviously be t==1
    if(t==1){
        r.right(angle);
        for(int i=0;i<3;i++){
            draw(r,c,s);
            r.left(angle);
            //wait(0.1);
        }
        r.right(angle);
        //getClick();
        return;
    } //If we paid close attention to the curves, we realise that H_odd always start towards r.right and end up "up" and H_even maintain direction towards r.right

    if(t%2==0){
        //Thus Hilbert figues comprising this figure would be odd

        //II quarter
        r.right(angle);
        hilbert(s,t-1,-angle, c,r); //Because we want to go down and not up
        r.left(angle); //Our turtle is now facing in the direction towards movement
        //instead of r.forward(s);
        draw(r,c,s);

        //III quarter
        r.left(angle);
        hilbert(s,t-1,angle,c,r);
        r.right(angle);
        draw(r,c,s);

        //IV quarter
        hilbert(s,t-1,angle,c,r);
        draw(r,c,s);

        //I quarter
        hilbert(s,t-1,-angle,c,r);
    }
    else{
        //Hilbert subfigures would be even

        //II quarter
        r.right(angle);
        hilbert(s,t-1,-angle,c,r);
        draw(r,c,s);

        //II quarter
        r.left(angle);
        hilbert(s,t-1,angle,c,r);
        draw(r,c,s);

        //IV quarter
        hilbert(s,t-1,angle,c,r);
        r.left(angle);
        draw(r,c,s);

        //I quarter
        hilbert(s,t-1,-angle,c,r);
    }
}

