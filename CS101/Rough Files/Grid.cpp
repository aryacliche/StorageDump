#include<simplecpp>

main_program{
    //Let's make a grid using grey lines
    initCanvas();
    Line Y[200];
    int i=0;
    repeat(25){
        Y[i]=Line(i*20,0,i*20,500);
        Y[i].setColor(COLOR(200,200,200));
        i++;
    }
    Line X[200];
    i=0;
    repeat(25){
        X[i]=Line(0,i*20,500,i*20);
        X[i].setColor(COLOR(200,200,200));
        i++;
    }
    do{
        int posn=getClick();
        cout<<"x="<<posn/65536<<"\n"<<"y="<<posn%65536<<"\n"<<"------------------------------------------------"<<endl;
    }while(true);
}
