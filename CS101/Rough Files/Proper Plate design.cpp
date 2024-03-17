#include<simplecpp>

main_program{
    turtleSim("Bolo Tarara", 1920, 1080);
    right(180); penUp(); forward(300); right(90); forward(200); right(90); penDown();
    cout<<"Sasuriya please bata diyo \'n\' ke hai"<<endl;
    int n;
    cin>>n;
    /*n is the number of spokes in our rudimentary shape (that is the one without any circles)
    Now let's first try to create the aforementioned rudimentary shape by creating equilateral traingles over a regular polygon with n sides
    Each side will obviously subtend 360/n at the centre thus we would have turned 360/n had we just drawn the polygon*/

    //The following code gives us our rudimentary shape

    /*repeat(n){
        forward(35);
        right(120);//apex angle is 60 so we turn by 120
        forward(35);
        left(120-360/n); //this is the angle at the base
        wait(0.1);
    } */

    //Now we build circles on top of this. We don't use full circles as that would look Middle Class Monisha

    repeat(2*n){
        forward(50);
        repeat(24){
            left(10);
            forward(1);
        }
        forward(50);
        repeat(24+36/n){
            right(10);
            forward(1);
        }
        //left(120-360/n);
        wait(0.1);
    }

    wait(5);
}
