#include<simplecpp>

main_program{
    int *p1, *p2, **p3;
    p3=&p1;
    cout<<"*p3 da value="<<*p3<<" aur p1 da value="<<p1<<endl;
    p1=new int;
    cout<<"Ab p1 da value="<<p1<<endl;
    p2=*p3;
    cin>>**p3;
    cout<<"Ek last baar p1="<<p1<<", p2="<<p2<<", *p3="<<*p3<<endl;
    if(p2==p1) cout<<"Same address"<<endl;
    if(*p2==*p1) cout<<"Same values"<<endl;

    //Note- if I had only written int *p; and tried to print
    //its value using cout<<*p, we would
    // not be able to get any output
    int pvalue=24, *p;
    p=&pvalue;
    cout<<"Pehle main aisa tha- "<<p<<
            ", aur meri aukaat itni thi- "<<*p<<endl;
    p=new int;
    cout<<"Ab main aisa hu- "<<p<<
            " aur meri aukaat itni badh gayi- "<<*p;
}
