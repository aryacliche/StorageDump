#include<simplecpp>
#include<stdio.h>

 bool lab_marks(int &total_marks){
    int smallest, second_smallest=1000,pla; //pla is for plagiarism
    //How this function will work-
    //We first assume that the first number is the smallest number. Now every time you input a number, it gets added to the total_marks.
    //We also make sure that if smallest changes its value i.e. encounters a smaller value, second_smallest compulsorily takes older value of smallest
    //Else if smallest doesn't change for an iteration, second_smallest tries to see if it needs to change

    cin>>smallest;//We assume for now that the first number is the smallest number
    total_marks+=smallest; //We have to somehow account for that number
    cout<<"you're here"<<endl;
    for(int i=0;i<6;i++){
        int r;
        cin>>r;
        total_marks+=r;
        cout<<"total_marks="<<total_marks<<endl;
        if(smallest>=r){
            second_smallest=smallest;
            smallest=r;
        }
        else{
            if(second_smallest>r) second_smallest=r;
        }
        cout<<"smallest, second smallest= "<<smallest<<","<<second_smallest<<endl;
    }
    total_marks-=(smallest+second_smallest);
    cin>>pla;
    bool cheat=false;
    if(pla==1) cheat=true;
    cout<<"finally"<<total_marks<<endl;
    return cheat;
 }

int lol(int* const lmao, int* const &rofl){
    cout<<"Mah man"<<endl;
        cout<<*rofl<<" "<<*lmao<<endl;
    *rofl*=*lmao;
    //Weirdly enough *lmao++ gives an error cause it shits its own panties
    *lmao+=1;
    return *rofl*2;
}

int* major_UB(){
    int x=3;
    return &x;
}

int alpha_male(int, char);

void swap_ele(int t[], int i, int j){ // We use this to exchange the values of the ith and jth positions of temp[]
    int temp_variable=t[i];
    t[i]=t[j];
    t[j]=temp_variable;
    return;
}

void bubblesort(int t[], int a, int n){
    for(int k=0; k<a-1; k++){ //We need to do a-1 iterations for a elements of an array
        for(int j=n-a; j<n-1-k;j++){
            if(t[j]>t[j+1])
                swap_ele(t, j, j+1);
        }
    }
    return;
}

void fucker(int arr[], char *muslin){
    muslin[0]='N';
    muslin[1]='o';
    muslin[2]='\0';
    return;
}

/*int main(int argc, char* argv[]){
    cout<<"So kaise ho dosto. Main aaj aapko dikhaunga"<<endl;
    for(int i=0;i<argc; i++){
        for(int j=0;argv[i][j]!='\0';j++)
            cout<<argv[i][j]<<endl;
    }
}*/

int main(){
    /*cout<<atan(1)<<endl;
    cout<<1.414*sin(atan(1));*/

    /*int arr[50]={1,2,3,4};
    char muslin[20]="Yes daadi";
    cout<<muslin<<endl;
    fucker(arr, muslin);
    cout<<muslin;*/

    /*int p=3;
    int q[4]={1,2,3,4};
    int r=2;
    cout<<q[]2<<endl;
    cout<<&p<<" "<<q<<" "<<&r<<" "<<&q[2]<<" "<<&q;*/

    /*initCanvas();
    while(true){
        int posn=getClick();
        cout<<"x= "<<posn/65536<<", y="<<posn%65536<<endl;
    }*/


    /*int a[]={20,23,1,52,57,23,6,1,464,7,32,53,33,13};
    int i=9;
    cout<<"OGs be like ";
    for(int k=0;k<14;k++) cout<<a[k]<<" ";
    cout<<endl;
    bubblesort(a,i,14);
    cout<<"Fake ass mfs be like ";
    for(int k=0;k<14;k++) cout<<a[k]<<" ";*/

    //cout<<sine(90);

    /*initCanvas();
    //Turtle n1;
    //n1.moveTo(20,0); getClick();
    Line l(250,250,300,300);
    l.setFill(true);
    l.setColor(COLOR(255,0,0));
    getClick();*/

    /*bool bulla=true;
    bulla=17;
    cout<<bulla;*/

    /*cout<<"Address of x-"<<major_UB()<<endl;
    cout<<"Again-"<<major_UB()<<endl;
    int lmao, rofl, roflmao, hello, hi, bye, a,b,c,d,e,f,g,h,i;
    int no[1000];
    cout<<"And again-"<<major_UB()<<endl;
    cout<<"Every time it holds "<<*major_UB()<<endl;
    int* p=major_UB();
    *p=5;
    cout<<"Now if I looked at exactly "<<p<<" I get "<<*p; */

    /*int a=10;
    if(a==10)
        cout<<"youou";
        cout<<"\n noooo";
    else
        cout<<"yeaaaa";*/

    /*int a=10;
    //int b=a*10+ a++;
    //a=10;
    int c=a*a++;
    //a=10;
    //int d=a++ + a;
    //a=10;
    cout<<"c ="<<c;*/

    /*initCanvas("win1",1000,1000);
    Rectangle r1(525,450,70,80);
    getClick();*/

    /*unsigned int a=-1;
    cout<<a;*/

    /*int a;
    if(a=-1) cout<<"true dat"<<endl;
    cout<<a;*/

    /*int a=0x1A;
    long dick=0;
    short ofcourse_you_had_to_make_a_dick_joke=9;
    cout<<dick<<" "<<ofcourse_you_had_to_make_a_dick_joke<<endl;

    cout<<++a<<" "<<a++;*/

    /*int a=10;
    int const p=&a;
    const int *j=&a;
    j++;
    j--;
    (*p)++;
    *j++;
    a++;
    //p++ or p-- or (*j)++ will give error
    cout<<a<<" "<<*p<<" "<<*j;*/

    /*int const b=10;
    const int c=20;
    const int *j=&b, *k=&c;
    int a=*j++;
    k--;
    cout<<*j<<" "<<*k<<" "<<a<<endl;*/

    /*int a,*d;
    a=11;
    d=&a;
    (*d)++;
        cout<<*d<<" "<<a<<endl;
    lol(d,d);
    cout<<a;*/

    /*cout<<"Comparing sizes (in bytes)"<<endl;
    cout<<"int-"<<sizeof(int)<<endl;
    cout<<"long int-"<<sizeof(long int)<<endl;
    cout<<"long long int-"<<sizeof(long long int)<<endl;
    cout<<"long-"<<sizeof(long)<<endl;
    cout<<"short-"<<sizeof(short)<<endl;
    cout<<"float-"<<sizeof(float)<<endl;
    cout<<"double-"<<sizeof(double)<<endl;
    cout<<"long float-"<<"Doesn't exist"<<endl;
    cout<<"long long float-"<<"Obviously doesn't exist either"<<endl;
    cout<<"long double-"<<sizeof(long double)<<endl;
    cout<<"short int-"<<sizeof(short int)<<endl;
    cout<<"short short int-"<<"Does not exist"<<endl;
    cout<<"short float-"<<"Float ki aukaat hi nahi long aur short jhelne ki"<<endl;*/

    /*char a,b,c,d;
    cin>>a>>b>>c;
    c=c+32;
    c=c-32;
    cin>>d;
    cout<<(char)(a+32)<<(char)(b+32)<<(char)(c+32)<<(char)(d+32);*/

    /*int total_marks=0;
    cout<<(bool)(lab_marks(total_marks))<<" "<<total_marks;*/

    /*cout.precision(2);
    cout<<123<<"\t"<<120.23<<"\t"<<3.472<<endl;

    cout<<fixed;
    cout.precision(7);
    cout<<12<<"\t"<<12.0<<"\t"<<12.34521<<endl;

    cout<<scientific;
    cout.precision(2);
    cout<<123<<"\t"<<123.4<<"\t"<<3.223<<endl;
    //prints 123    1.2e+002   3.2e+000 */

    /*int x=0x10;
    cout<<x;*/
}
