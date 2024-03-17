#include<simplecpp>

int W(int n){
    if(n==0||n==1||n==2) return 1;
    return W(n-1)+W(n-2)+W(n-3);
}
