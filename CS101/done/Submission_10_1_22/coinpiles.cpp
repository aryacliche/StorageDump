#include<simplecpp>

int coin_piles(int a, int b){
    //If they have to empty out at the same time, we need to take 2 coins every time from the larger pile and 1 from the smaller one
    while(a>0&&b>0){
        if(a>b){
            a-=2;
            b--;
        }
        else{
            a--;
            b-=2;
        }
    }
    if(a==b) return 1; //since loop will only end when one of them turns to 0 or goes below, this ensures a=b=0
    return 0;
}
