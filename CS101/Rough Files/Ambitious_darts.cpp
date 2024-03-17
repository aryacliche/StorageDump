#include<simplecpp>

main_program{
    initCanvas();
    //Let's make the dart's board
    { //We reduce scope of the circles so that only their imprint exists when we throw darts cause shapes hide other (especially our darts' imprints)
        Circle c1(250,250,180),c2(250,250,140),c3(250,250,100),c4(250,250,60),c5(250,250,20);
        c1.setFill(true);
        c2.setFill(true);
        c3.setFill(true);
        c4.setFill(true);
        c5.setFill(true);

        c1.setColor(COLOR(0,0,0));
        c2.setColor(COLOR(255,255,0));
        c3.setColor(COLOR(0,0,0));
        c4.setColor(COLOR(255,255,0));
        c5.setColor(COLOR(255,0,0));

        c1.imprint();
        c2.imprint();
        c3.imprint();
        c4.imprint();
        c5.imprint();
    } //Dart board made

    Rectangle r(50,450,100, 100);//Let's make the minimap
    Line l1(90,405, 90,495);
    Line l2(89,415, 89,485); l2.setColor(COLOR(255,255,0));
    Line l3(88,425, 88,475);
    Line l4(87,435, 87,465); l4.setColor(COLOR(255,255,0));
    Line l5(86,445, 86,455); l5.setColor(COLOR(255,0,0));
    Text minimap(50, 390, "Minimap"); //Minimap completed

    Text sc(400, 40, "SCORE"); //Score board
    sc.setColor(COLOR(0,0,255));
    Text t1(380, 57, "Throw 1=");
    Text t2(380, 74, "Throw 2=");
    Text t3(380, 91, "Throw 3=");

    int height=57; //For the scoreboard updates
    repeat(3){ //We give 3 throws per chance
        int x_pow, y_pow; //Power of the throw's coordinates
            { //We create this to limit the scope of our power level rectangle
                Rectangle r(350, 470, 200, 20);
                Text P(310, 470, "P"); P.setColor(COLOR(0,255,0));
                Text O(330, 470, "O"); O.setColor(COLOR(64,196,0));
                Text W(350, 470, "W"); W.setColor(COLOR(128,128,0));
                Text E(370, 470, "E"); E.setColor(COLOR(196,64,0));
                Text R(390, 470, "R"); R.setColor(COLOR(255,0,0));
                Text t(250, 20, "Please select the power of your throw");
                do{ //This ensures the user only clicks inside the power bar
                int pos_pow=getClick();
                x_pow=pos_pow/65536; y_pow=pos_pow%65536;
                }while(!(x_pow<=450&&x_pow>=250&&y_pow>=460&&y_pow<=480));
            }
        Text t(250, 20, "Please click to throw");

        int posn=getClick(); // We process where user aims from
        int x=posn/65536, y=posn%65536;

        Circle dart_m(5, 400+(y-50)/4.0, 2); //dart on minimap created
        dart_m.setFill(true);
        dart_m.setColor(COLOR(0,0,255));
        dart_m.penDown();

        int y_dart=0; //This is the position where the dart actually hits our main dart board
        double vx=((x_pow-250)/200.0)*1.5, vy=0; //We try to estimate the power with which the dart is thrown

        while((dart_m.getX()<=88)&&(dart_m.getY()<=498)){ //We ensure that the dart doesn't leave the minimap
            dart_m.move(vx, vy);
            vy+=0.01;
        } //Made by Arya Vishe the great, the saviour of kind souls and the destroyer of liberals with fax and logic

        y_dart=(dart_m.getY()-400)*4+50;

        Circle dart(x, y_dart, 5); //We make the imprint of the dart that was thrown (NOTE: We make imprint because this dart stops existing as soon as the curly bracket is encountered hence imprinting is necessary
        dart.setFill(true);
        dart.setColor(COLOR(0,255,0));
        dart.imprint();

        //Now let us update the scores
        double d=sqrt((x-250)*(x-250)+(y_dart-250)*(y_dart-250)); //This measures distance from centre of board

        if(d<=20){ Text score(420, height, "100"); score.imprint();}
        else if(d<=60) {Text score(420, height, "60"); score.imprint();}
        else if(d<=100) {Text score(420, height, "40"); score.imprint();}
        else if(d<=140) {Text score(420, height, "20"); score.imprint();}
        else if(d<=180) {Text score(420, height, "10"); score.imprint();}
        else {Text score(420, height, "Feel shame"); score.imprint();}

        height+=17;
    }
    getClick();
}
