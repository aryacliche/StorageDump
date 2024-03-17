#include<simplecpp>

void print_coordinates(int n){
    int x=0, y=0, o=0;  //x and y decide the coordinates, o decides the orientation
    //If o%4=0, we are facing east, o$4=1, we are facing north, o%4=2, west, o%4=3, south
    for(int i=0;i<n;i++){
        char h;
        cin>>h;
        if(h=='F'){
            int g=o%4; //we simplify the orientation
            if(g==0) x+=1; //depending on orientation, we change coordinates
            else if(g==1) y+=1;
            else if(g==2) x-=1;
            else y-=1;
        }
        else if(h=='L') o++; //o++ turns orientation by 90 degrees to the left
    }
    cout<<x<<" "<<y;
}
