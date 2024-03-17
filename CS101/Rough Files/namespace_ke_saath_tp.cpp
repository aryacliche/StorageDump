#include<iostream>
using namespace std;
namespace N{
	void cout(int a){
		while(a>0){
			std::cout<<(a%10);
			a/=10;
		}
	}
}

int main(){
	cout<<12;
	using namespace N;
	N::cout(12);
	return 0;
}
