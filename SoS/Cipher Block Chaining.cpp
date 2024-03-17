#include<simplecpp>
int codebook(int plaintext){
    int plain[]={0000,0001,0010,0011,0100,0101,0110,0111,1000,1001,1010,1011,1100,1101,1110,1111};
    int cipher[]={1001, 1000,0100,0101,0011,0111,1101,1111,0110,1011,0001,1100,0010,1100,1010,0000};
    for(int i=0;i<16;i++){
        if(plaintext == plain[i])
            return cipher[i];
    }
}

int main(){
    char n[100];
    cin>>n;

    while(t>0){

    }

    cout<<codebook(n);

}
