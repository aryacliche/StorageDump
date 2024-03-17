#include<iostream>
#include<cmath>
using namespace std;

int main(){
    int n;
    cin>>n; //Number of elements in arrays
    int x[n],y[n];
    for(int i=0;i<n;i++) cin>>x[i]; //We have initialised x[n]
    for(int i=0;i<n;i++) cin>>y[i]; //We have initialised y[n]

    int s_x=0, s_y=0, s_x2=0, s_y2=0, s_xy=0; //s_x is summation of values in x[n] and others are thus self explanatory
    for(int i=0;i<n;i++){
        s_x+=x[i];
        s_y+=y[i];
        s_x2+=x[i]*x[i]; //summation of x^2
        s_y2+=y[i]*y[i];
        s_xy+=x[i]*y[i]; //summation of xy
    }

    double exp=(n*s_xy-s_x*s_y)/(sqrt(n*s_x2-s_x*s_x)*sqrt(n*s_y2-s_y*s_y)); //Our final expression

    cout<<fixed;
    cout.precision(2);
    cout<<exp;
    return 0;
}
