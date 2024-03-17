#include<iostream>

using namespace std;

int main(){
    int length_of_A, length_of_B;
    cin>>length_of_A>>length_of_B;
    char A[length_of_A], B[length_of_B];
    //Simple definition of arrays

    for(int i=0; i<length_of_A; i++)
        cin>>A[i];
    for(int i=0; i<length_of_B; i++)
        cin>>B[i];
    //Straightforward initialisation upto this point

    char U[length_of_A+length_of_B]; //This will be union set with maximum length assuming no intersection
    for(int i=0; i<length_of_A+length_of_B; i++)
        U[i]=(char)1; //We want to ensure that if we ever reach the end, we don't print more than the actual union

    /*We know that the arrays are sorted thus we can make a while loop such that-
    1. when A[i]=B[j], i++ and j++
    2. when A[i]<B[j], i++
    3. when A[i]>B[j], j++
    All the way until one of them reaches the limit of length*/
    int i=0, j=0, ctr=0; //ctr is for the union set
    while(!(i==length_of_A && j==length_of_B) //We don't want both i and j as the limits
                                                ){

    /*Some cases that we should be prepared for-
    1. Both i=length_of_A and j=length_of_B. Then we end loop
    2. If we get repeated letters, we have to remove them by just skipping that value of i/j respectively
    */
        if(i!=0 && A[i]==A[i-1]){ //We don't want to get A[-1]
            i++;
            continue;
        }
        if(j!=0 && B[j]==B[j-1]){ //We don't want to get B[-1]
            j++;
            continue;
        }

        //Now we can have segmentation fault if i==length_of_A or j==length_of_B so we have to add some ways to circumvent them

        if(i<length_of_A&&j<length_of_B){
            if(A[i]==B[j]){
                U[ctr]=A[i];
                i++;
                j++;
                ctr++;
            }
            else if(A[i]<B[j]){
                U[ctr]=A[i];
                i++;
                ctr++;
            }
            else if(A[i]>B[j]){
                U[ctr]=B[j];
                j++;
                ctr++;
            }
        }
        else if(i==length_of_A){
            U[ctr]=B[j];
            j++;
            ctr++;
        }
        else if(j==length_of_B){
            U[ctr]=A[i];
            i++;
            ctr++;
        }
        if(ctr<2) continue; //Because we don't want U[-1] or U[-2] in the next line

        /*if(U[ctr-1]==U[ctr-2]){ //If we had the element we just updated was repeated, we need to rectify it
            U[ctr-1]=(char)1; //We reverted our recently updated value
            --ctr;
        }*/
    }

    for(int i=0;i<length_of_A+length_of_B; i++){
        if(U[i]==(char)1) break;
        cout<<U[i]<<" ";
    }
    return 0;
}
