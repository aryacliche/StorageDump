#include<simplecpp>
#include<cmath>
#include<iostream>
#include<stdio.h>

int main(){
    initCanvas();

    while(true){
        Line l1, l2, l3, lr;

        for(int t=0;t<360;t++){

            l1=Line(250,250,250+50*sine(t),250);
            l2=Line(250,250,250+25*sine(t-120),250-25*1.732*sine(t-120));
            l3=Line(250,250,250+25*sine(t-240),250+25*1.732*sine(t-240));
            l1.setColor(COLOR(255,0,0));
            l2.setColor(COLOR(0,0,255));
            l3.setColor(COLOR(0,255,0));

            lr=Line(250,250,250+75*sine(t),250-75*cosine(t));
            wait(0.3);
        }
    }
    return 0;
}
