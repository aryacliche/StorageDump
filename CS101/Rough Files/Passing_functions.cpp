#include<iostream>
#include<functional> //We need this else we can't write std::function<>

int accumulate(int n, std::function<int(int,int)> f){
    int res=1;
    for(int i=2;i<=n;i++)
        res=f(res,i);
    return res;
}

int main(){
    std::cout<<"Enter n"<<std::endl;
    int n;
    std::cin>>n;
    std::cout<<"Sum of numbers till n="<<accumulate(n,[](int a, int b){return a+b;})<<std::endl;
    std::cout<<"Product of numbers till n="<<accumulate(n,[](int a, int b){return a*b;})<<std::endl;
    return 0;
}
