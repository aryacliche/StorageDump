#include<simplecpp>

main_program{
    turtleSim("Parabola", 1920, 1080);
    left(90);

    cout<<"Select how big you want your parabola"<<endl;
    int n=0;
    cin>>n;

    cout<<"Select the pixel size of animation"<<endl;
    double p=0;
    cin>>p;

    //Let's first define a coordinate system with x and y coordinates
    double y=0; //ordinate
    double x=0; //abscissa
    /*If our parabola is of form y2=4ax,
    dy/dx=root(a/x)=tan theta*/
    cout<<"Enter the value of a for your parabola"<<endl;
    double a;
    cin>>a;

    double theta=atan(2*a/y);//We have now set up the entire list of variables needed
    double theta_new;
    cout<<theta<<endl;

    repeat(n){
        forward(p);
        x+=p*cos(theta);
        y+=p*sin(theta);
        //cout<<"x="<<x<<endl;
        cout<<"y="<<y<<endl;
        theta_new=atan(2*a/y);
        cout<<"theta_new="<<theta_new<<endl;
        double delta_theta=(theta-theta_new);
        left(delta_theta);
        cout<<"delta_theta="<<delta_theta<<endl;
        theta=theta_new;
    }
    wait(10);
}
