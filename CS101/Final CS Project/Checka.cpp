#include<simplecpp>

int main(){
    vector<int> a={1,2,3};
    a.push_back(12);
    for(int i=0; i<4;i++) cout<<a[i]<<endl;
    a.erase(a.end()-1);
    //cout<<a.begin()<<endl;
    a.clear(); //This actually forgets the entire vector
    a.push_back(11); //Garbage shit hence the values persist but you can see that the pushback happens from the first element
    a.push_back(123);
    for(int i=0;i<7;i++) cout<<"yes "<<a[i]<<endl;
    return 0;
}
