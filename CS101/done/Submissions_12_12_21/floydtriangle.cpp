#include<simplecpp>

main_program{
    int n;
    cin>>n;
    int i=1, j=1; //i would be our counter for numbers printed and j would count elements per row
    repeat(n){ //n rows hence we repeat the outermost loop n times
        repeat(j){
        cout<<i<<" "; //Each number is printed with a space in between
        i++;
        }
        cout<<endl;
        j++; //no of elements per row are incremented per row
    }
}
