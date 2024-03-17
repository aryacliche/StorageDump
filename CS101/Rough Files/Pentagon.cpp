#include<simplecpp>

main_program{
    turtleSim();
    cout<<"Kitne sides ka star mangtay apko?"<<endl;
    int side;
    cin>>side;
    if(side==6)
    cout<<"Saala Zionist!"<<endl;
    int angle;
    int dimension=2;
    repeat(4){
        angle=360*dimension/side;

        repeat(side){
            forward(40);
            right(angle);
            wait(0.1);
        }
        penUp();
        forward(80);
        penDown();
        dimension++;
    }
    wait(10);

}
