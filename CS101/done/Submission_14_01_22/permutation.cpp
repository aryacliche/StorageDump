#include<simplecpp>

void swapper_3(int &a, int &b, int &c);
void swapper_2(int &a, int &b);

void permutation(int &a, int &b, int &c, int n){
    //I am tempted to use switch case but that is out of portion
    if(n==1) return;
    else if(n==2) swapper_2(b,c);
    else if(n==3) swapper_2(a,b);
    else if(n==4) swapper_3(a,b,c); //c takes a's value, b takes c's and a takes b's
    else if(n==5) swapper_3(b,a,c);
    else if(n==6) swapper_2(a,c);
    return;
}

void swapper_3(int &a, int &b, int &c){ //A special function that finally stores a's value in b, b's in c and c's in a
    int t_1=b, t_2=c;
    c=a;
    b=t_2;
    a=t_1;
    return;
}

void swapper_2(int &a, int &b){ //Just a standard swapper
    int t=b;
    b=a;
    a=t;
    return;
}
