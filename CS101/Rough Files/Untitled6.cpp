#include<iostream>
//BTW writing "using namespace k" here will give an error
int a(int, int);

namespace k{
    int a(int l, int k){
        return l-k;
    }
}

namespace yoohoo{
    int a(int b, char c){
        return b*((int)c);
    }
}

using namespace k;

int main(){
    std::cout<<a(3,'c');
    std::cout<<std::endl<<a(7);
    return 0;
}

int a(int a, int b){
    return a+b;
}
