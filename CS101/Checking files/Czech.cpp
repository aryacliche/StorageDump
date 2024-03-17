#include<iostream>
#include<cmath>
using namespace std;


struct Friendo{
    int sizes;
    int happiness_index;
};

struct Dootie{
    Friendo Baby, booboo;
};
 //This semicolon be important

int yello(double a){ cout <<"double"<<endl; return a+10;}

int yello(int a){ cout<<"int"<<endl; return a+10;}

int main(){
    cout<<yello(10.0);
    cout<<yello(10);

    //Dootie Javed, Fawad;

    /*Friendo const Hello={122, -12}, Mistah={332, 10};

    //Hello.sizes++;
    Mistah.happiness_index--;
    cout<<Hello.sizes<<endl<<Mistah.happiness_index;*/
}
