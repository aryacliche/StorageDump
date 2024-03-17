#include<simplecpp>

int circumcircle(Rectangle a, Rectangle b, Rectangle c){
    double x[]={0,a.getX(), b.getX(), c.getX()}, y[]={0,a.getY(), b.getY(), c.getY()};
    double c_x=(x[3]-x[1])/(y[1]-y[3]) - (x[2]-x[1])/(y[1]-y[2]);
    c_x=(y[2]/2-y[3]/2+(x[3]*x[3]-x[1]*x[1])/(2*y[1]-2*y[3])- (x[2]*x[2]-x[1]*x[1])/(2*y[1]-2*y[2])) / c_x;
    double c_y=(x[3]-x[1])/(y[1]-y[3])*(c_x-x[1]/2-x[3]/2)+y[1]/2+y[3]/2;
    return 65536*c_x+c_y;
}

double dist(int x, int y, Rectangle s){
    double distance=pow(s.getX()-x,2)+pow(s.getY()-y,2);
    distance=sqrt(distance);
    return distance;
}

int main(){
    initCanvas();
    int n;
    cin>>n;
    Rectangle s[n];
    for(int i=0;i<n;i++){
        int posn=getClick();
        s[i]=Rectangle(posn/65536, posn%65536, 5,5);
        s[i].setFill(true);
        s[i].setColor(COLOR(255,0,0));
    } //Now we have made our rectangles totally

    // I doubt this is a mathematics question as the problem is really difficult for n>5 and so we should probably solve it iteratively or something of that sort.
    //But we can be sure of one thing- the final circle will pass through 3 points at least.
    //So let us choose 3 points in nC3 ways and then find all the Circles which pass through them(1 unique circle can be made by 3 points)

    int min_rad=500, final_x, final_y;
    for(int i=0;i<n;i++){
        for(int j=i+1; j<n; j++){
            for(int k=j+1; k<n;k++){

                cout<<i<<" "<<j<<" "<<k<<endl;

                //We get every combination of 3 points' indexes (i,j,k) where i!=j!=k
                int c=circumcircle(s[i], s[j], s[k]);
                int x=c/65536, y=c%65536;

                cout<<"x="<<x<<", y="<<y<<endl;

                double radius=pow(s[i].getX()-x,2)+pow(s[i].getY()-y,2);
                radius=sqrt(radius);

                for(int m=0;m<n;m++){
                    if(dist(x,y,s[m])-radius>0.05){
                        radius=500;
                        break;
                    }
                }

                Circle temp(x, y, radius);
                wait(5);

                if(min_rad>radius){
                    min_rad=radius;
                    final_x=c/65536;
                    final_y=c%65536;
                }
            }
        }
    }
    Circle Final_Circle(final_x, final_y, min_rad);
    getClick();
    return 0;
}
