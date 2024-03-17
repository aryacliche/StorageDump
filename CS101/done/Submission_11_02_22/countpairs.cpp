#include<iostream>
using namespace std;

int main(){
    int n, l, r;
    cin>>n>>l>>r;
    int A[n]; //Now we have declared our array

    for(int i=0; i<n; i++)
        cin>>A[i]; //Now our array is initialised
        //A[i]=i*i;

    //The sample outputs make it obvious that we are only allowed to make ascending pairs thus for an i, j should be >i
    //One more thing- We have been given a very large n thus it would be best if we could find at least one number that satisfies our condition and then inspect other numbers in its neighbourhood

    int ctr=0; //The final thing we will output
    for(int i=0; i<n; i++){ //We need not take it to
        //We will now try to study the array elements exclusively ahead of i
        if(A[i]>r) break;
        if(A[i]+A[n-1]<l) continue; //We know that the array is sorted thus we make these 2 conditions to hasten the process

        int lb=i+1, ub=n-1, m;
        while(lb<ub){
            m=(lb+ub)/2;

            if(ub-lb==1) break; //A possible case that can cause problems is if the range for a specific i lies b/w 2 consecutive elements of our array. In that case, lb will remain lb and ub will remain ub so we add this to eliminate that case whenever it pops up

            if(A[m]<l-A[i]) lb=m;
            else if(A[m]>r-A[i]) ub=m;
            else   //This case refers to when m a value that follows our condition. Also these lb and ub are good approximations for the range in which our condition might hold true
                break;
        }
        //Now we have a good range [lb,ub] which we should check
        for(int j=lb; j<=ub; j++){
            if(A[j]+A[i]>=l && A[j]+A[i]<=r) ctr++;
        }
    }

    cout<<ctr;
    return 0;
}
