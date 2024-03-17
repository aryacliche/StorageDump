#include<iostream>
#include "header1.h"
using namespace std;

void bruh(){
    cout<<"bruh"<<endl;
}

int bhrat::bruh(int a, int b){
    cout<<"Tis just a void lmao"<<endl;
    return 21;
}

int main(){
    bruh();
    cout<<bhrat::bruh(2,3)<<endl;
    cout<<"Bolo shivaji"<<endl;
    cout<<bhrat::a(3,5)<<endl;
    cout<<a(3,5)<<endl;
    using namespace bhrat;
    cout<<c();
    return 0;
}
