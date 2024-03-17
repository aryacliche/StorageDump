#include<simplecpp>

main_program{
 int x,n,k,p=1;
  cin>>x>>n>>k;
    int crr=x;
 for(int nterm; n>=1; n/=2)
 {
    if(n==0) n==1;
    nterm= n%2;
    //cout<<nterm;
    if(nterm==1)
        p*=crr;
    cout<<p<<endl;
    crr*=crr;
    crr%=k;
    p%=k;
  }
  cout<<endl<<p%k;



}
