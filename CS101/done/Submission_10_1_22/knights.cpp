#include<simplecpp>

double distance(int x1, int y1, int x2, int y2){ //We make this extra function just to declutter our space
    return sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)); //The idea is for 2 knights to capture each other, they should be an L shape away which translates to root(5) distance b/w centres of squares
}

int knights(int k){
    int w=0, r=0; //w stores number of ways of you should not set up knights, r stores total number of ways you can set them up
    int n=0; //This stores the square number such that row number(x)=n/k and column number(y)=n%k
    //x and y represent the coordinates of the centre of each square
    //Note how this makes rows- 0 to k-1 and columns 0 to k-1
    for(n=0;n<k*k;n++){ //Our first knight
        for(int i=n+1;i<k*k;i++){ //Our second knight
            int x1=n/k, x2=i/k, y1=n%k, y2=i%k;
            double dist=distance(x1, y1, x2, y2);
            r++; //To increment the total number of allignments
            if(dist>=sqrt(5)-0.1&&dist<=sqrt(5)+0.1) w++; //We added a small buffer of +-0.1 around sqrt(5) as we don't want precision to cause problems while using equality
        }
    }
    return r-w;
}
