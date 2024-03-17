#include<simplecpp>

void hilbert(double s, int t, int angle){ //For the logic that went into the coding - https://imgur.com/a/Sv5p5xs
    //Base case will obviously be t==1
    if(t==1){
        right(angle);
        for(int i=0;i<3;i++){
            forward(s);
            left(angle);
            //wait(0.1);
        }
        right(angle);
        //getClick();
        return;
    } //If we paid close attention to the curves, we realise that H_odd always start towards right and end up "up" and H_even maintain direction towards right

    if(t%2==0){
        //Thus Hilbert figues comprising this figure would be odd

        //II quarter
        right(angle);
        hilbert(s,t-1,-angle); //Because we want to go down and not up
        left(angle); //Our turtle is now facing in the direction towards movement
        forward(s);

        //III quarter
        left(angle);
        hilbert(s,t-1,angle);
        right(angle);
        forward(s);

        //IV quarter
        hilbert(s,t-1,angle);
        forward(s);

        //I quarter
        hilbert(s,t-1,-angle);
    }
    else{
        //Hilbert subfigures would be even

        //II quarter
        right(angle);
        hilbert(s,t-1,-angle);
        forward(s);

        //II quarter
        left(angle);
        hilbert(s,t-1,angle);
        forward(s);

        //IV quarter
        hilbert(s,t-1,angle);
        left(angle);
        forward(s);

        //I quarter
        hilbert(s,t-1,-angle);
    }
}
