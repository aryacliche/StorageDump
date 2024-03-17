#include<iostream>

using namespace std;

int main(){
    int n;
    cin>>n;

    //An important feature our constraints give us is that our elements would be in [0,n] and so now we can go through the entire array with just one number in that set
    int arr[n], f[n], l[n], maxi=0, mini=n; //f and l store first and last occurences respectively, max and min stores the largest and smallest number we encountered

    //We use max and min to further cut down on the number of iterations later on
    for(int i=0; i<n; i++){
        cin>>arr[i];
        f[i]=-1;
        l[i]=-1;
        if(maxi<arr[i]) maxi=arr[i];
        if(mini>arr[i]) mini=arr[i];
    } //We have succesfully initialised l, f, and arr as well as have found the limits of the set
    //cout<<maxi<<endl<<mini<<endl;

    int ctr=0; //counter for f and l
    int md=0; //max distance
    for(int i=mini; i<=maxi; i++){//We need not check every single number this way
        for(int j=0;j<n;j++){
            if(arr[j]==i){
                l[ctr]=j;
                if(f[ctr]==-1)
                    f[ctr]=j; //We only want f to take the value the first time around. l should take value every time
            }
        }
        //cout<<i<<"."<<l[ctr]-f[ctr]<<endl;
        if(md<(l[ctr]-f[ctr])) md=l[ctr]-f[ctr];
        //cout<<i<<"."<<md<<endl;
        ctr++; //For a specific i i.e. distinct element, we have a specific counter number only
    }

    //for(int i=0;i<ctr;i++) cout<<i<<"."<<f[i]<<" "<<l[i]<<endl;
    cout<<md;
    return 0;
}
