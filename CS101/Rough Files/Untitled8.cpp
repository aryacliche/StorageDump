#include<simplecpp>

main_program{
    //cout<<pow(5,3)+pow(1,3)+pow(3,3)<<endl;
    int i;
    cin>>i;
    int t=i, dig=0, sum=0;
    while(t>0){
        dig++;
        t/=10;
    }
    t=i;
    int j=1;
    while(t>0){
        cout<<j<<". ";
        int r=t%10;
        int k=ceil(pow(r,dig));
        cout<<"Power to be added="<<r<<"^"<<dig<<"="<<k<<" ";
        sum+=k;
        t/=10;
        cout<<"Partial sum="<<sum<<endl;
        j++;
    }
    cout<<"Final sum="<<sum;
}
