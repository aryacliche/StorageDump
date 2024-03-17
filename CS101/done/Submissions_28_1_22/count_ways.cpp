#include<simplecpp>

/*long int count_ways(int n){ //This method seems a bit hardcode-ish since we have 6 base cases. Plus it is recursive hence will be slower than iterative method. Thus discarded

    //We can use the logic we had used for Virhanka numbers and extend that
    //Trying to solve recursively (Slower)
    if(n==1) return 1;
    else if(n==2) return 2;
    else if(n==3) return 4; //Reason why count_ways(n)=2^(n-1) for n<=6 is that you are finding the number of ways of making non-subsets of our master set
    else if(n==4) return 8;
    else if(n==5) return 16;
    else if(n==6) return 32;

    return count_ways(n-1) //If the first term is 1
        +count_ways(n-2) //First term is 2
        +count_ways(n-3) //3
        +count_ways(n-4)//4
        +count_ways(n-5)//5
        +count_ways(n-6);//6
}*/


/*long int count_ways(int n){ //This method doesn't use that many hardcoded values but it is incredibly slower than the first method because of so many function calls
    //Let's try to make a recursive function that doesn't require that many hardcoded values in the base cases (We will require 6 base cases nonetheless but it is frowned upon to use 6 hardcoded values)
    //We will just take count_ways(1)=1 and count_ways(2)=2. Else all we will derive from this

    if(n==1) return 1;
    else if(n==2) return 2;
    else if(n==3) return count_ways(1)+count_ways(2)+1; //Same logic as VIrhanka but that plus 1 is for singleton {3} which isn't included in count_ways(1) or count_ways(2)
    else if(n==4) return count_ways(1)+count_ways(2)+count_ways(3)+1;
    else if(n==5) return count_ways(1)+count_ways(2)+count_ways(3)+count_ways(4)+1;
    else if(n==6) return count_ways(1)+count_ways(2)+count_ways(3)+count_ways(4)+count_ways(5)+1;

    return count_ways(n-1) //If the first term is 1
        +count_ways(n-2) //First term is 2
        +count_ways(n-3) //3
        +count_ways(n-4)//4
        +count_ways(n-5)//5
        +count_ways(n-6);//6
}*/

void swapper(int &a_0, int &a_1, int &a_2, int &a_3, int &a_4, int &a_5, int &a_6){
    a_6=a_5;
    a_5=a_4;
    a_4=a_3;
    a_3=a_2;
    a_2=a_1;
    a_1=a_0;
    return;
}

long int count_ways(int n){ //Let's try now with iterative method
    // Let our current number of ways be denoted by w
    //w_1, w_2, w_3, ... w_6 denote the last, second last, ...6th last value of w

    int w, w_1=32, w_2=16, w_3=8, w_4=4, w_5=2, w_6=1; //We are still hardcoding values but at least our method is faster

    if(n==1) return w_6; //We need not use 'else if' as return will terminate the activation window anyways
    if(n==2) return w_5;
    if(n==3) return w_4;
    if(n==4) return w_3;
    if(n==5) return w_2;
    if(n==6) return w_1;

    for (int i=7; i<=n;i++){
        w=w_1+w_2+w_3+w_4+w_5+w_6;

        //Now we have to swap all numbers by shifting them by 1 position
        swapper(w,w_1,w_2,w_3,w_4,w_5,w_6);
    }
    return w;
}
