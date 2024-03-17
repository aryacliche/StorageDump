#include<simplecpp>

main_program{
    //Incredibly ambitious project of a man with too many pending backlogs
    initCanvas();
    Text t1(250, 20, "Hey! Are you a photon moving through a LASER medium?");

    //Time to create our boi with our reference point at (250, 230)
    int x=250, y=230;
    Circle head(x, y-130, 30);
    Circle eye1(x+10, y-140, 5);
    Circle eye2(x-10, y-140, 5);
    Line mouth(x-10, y-115, x+10, y-115); //COM=(x, y-115)
    Line torso(x, y-100, x, y); //COM=(x, y-50)
    Line hand1(x, y-90, x+30, y-70);
    Line hand2(x, y-90, x-30, y-70);
    Line leg1(x, y, x+30, y+20);
    Line leg2(x, y, x-30, y+20);

    //Now let us move our boi
    int posn=getClick();
    x=posn/65536;
    y=posn%65536;

    head.moveTo(x, y-130);
    eye1.moveTo(x+10, y-140);
    eye2.moveTo(x-10, y-140);
    torso.moveTo(x, y-50);
    hand1.moveTo(x+15, y-80);
    hand2.moveTo(x-15, y-80);
    leg1.moveTo(x+15, y+10);
    leg2.moveTo(x-15, y+10);

    //let's destroy the mouth
    mouth.moveTo(1000, 1000);
    Circle woah(x, y-115, 10);
    woah.setFill(true);
    woah.setColor(COLOR(255, 0, 0));

    //Now onto the main part of this story
    Circle e1(x, y, 5), e2(x, y, 5), e3(x, y, 5), e4(x, y, 5), e5(x, y, 5), e6(x, y, 5);
    float gravity=0.05, vx1=1.28, vx2=1, vx3=1.366, vx4=-0.17, vx5=-0.707, vx6=-1.22, vy1=-0.597, vy2=-1, vy3=-1.366, vy4=-1.40, vy5=-1.22, vy6=-0.707;
    repeat(50){
        e1.penDown();
        e2.penDown();
        e3.penDown();
        e4.penDown();
        e5.penDown();
        e6.penDown();

        e1.move(vx1, vy1);
        e2.move(vx2, vy2);
        e3.move(vx3, vy3);
        e4.move(vx4, vy4);
        e5.move(vx5, vy5);
        e6.move(vx6, vy6);

        vy1+=gravity;
        vy2+=gravity;
        vy3+=gravity;
        vy4+=gravity;
        vy5+=gravity;
        vy6+=gravity;
        wait(0.004);
    }

    Text t2(250, 480, "Because you stimulate my emission");
    getClick();
}
