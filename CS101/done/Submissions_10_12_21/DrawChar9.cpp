#include<simplecpp>

main_program{
    cout<<"Please enter the number of pixels you want per line segment of your figure"<<endl;
    cout<<"Note- Please try and input a number between 10 and 199 only"<<endl;
    int n; //Takes in the number of pixels per side
    cin>>n;
    turtleSim();
    forward(n); wait(0.1);
    left(90);
    forward(n); wait(0.1);
    repeat(4){
        forward(n); wait(0.1);
        left(90);
    }
    right(90); //To ensure our turtle is properly alligned
    wait(10);
}
