#include<simplecpp>

main_program{
    initCanvas();
    {Rectangle r(250,250,500,500);
    r.setFill(true);
    r.imprint();}

    {
        Text t(250,250,"Hiroshima");

        wait(3);
    }
    wait(1);
    {
        Text t(250,50,"Deploying");
        for(int i=40;i>=2;i--){
            Circle c(250,250, i);
            c.setFill(true);
            c.setColor(COLOR(255,0,0));
            wait(0.1);
        }
    }
    /*Circle c(250,250, 5);
    c.setFill(true);
    c.setColor(COLOR(255,0,0));
    for(int i=0;i<=250;i++){
        Circle s(250, 250, i);
        s.setFill(true);
        if(i<=25){
            s.setColor(COLOR(0,0,i*10));
            s.imprint();
        }
        else if(i<=50){
            s.setColor(COLOR(0,0,(50-i)*10));
            s.imprint();
        }
        else if(i<=100){
            s.setColor(COLOR(0,0,i*5));
            s.imprint();
        }
        else if(i<=200){
            s.setColor(COLOR(0,0,(200-i)*2));
            s.imprint();
        }
    }*/


    for(int i=0;i<=250;i++){
        Circle s(250, 250, i);
        s.setFill(true);
        if(i<=25){
            s.setColor(COLOR(255*i/25,255*i/25,0));
            s.imprint();
        }
        else if(i<=50){
            s.setColor(COLOR(255*(50-i)/25,255*(50-i)/25,0));
            s.imprint();
        }
        else if(i<=100){
            s.setColor(COLOR(255*(100-i)/25,255*(100-i)/25,67));
            s.imprint();
        }
        else if(i<=200){
            s.setColor(COLOR(255,255,255));
            s.imprint();
        }
        else{
            s.setColor(COLOR((255-i)*5,(255-i)*5,(255-i)*5));
            s.imprint();
        }
    }

    {Rectangle r(250,250,500,500);
    r.setFill(true);
    r.imprint();
    Text t(250,250,"LMAO ded");
    getClick();
    }
}
