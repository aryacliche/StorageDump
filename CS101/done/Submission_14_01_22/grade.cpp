#include<simplecpp>

 bool lab_marks(int &total_marks){
    int smallest, second_smallest=1000,pla; //pla is for plagiarism
    /*How this function will work-
    We first assume that the first number is the smallest number. Now every time you input a number, it gets added to the total_marks.
    We also make sure that if smallest changes its value i.e. encounters a smaller value, second_smallest compulsorily takes older value of smallest
    Else if smallest doesn't change for an iteration, second_smallest tries to see if it needs to change
    */
    cin>>smallest;//We assume for now that the first number is the smallest number
    total_marks+=smallest; //We have to somehow account for that number
    //cout<<"you're here"<<endl;
    for(int i=0;i<6;i++){
        int r;
        cin>>r;
        total_marks+=r;
        //cout<<"total_marks="<<total_marks<<endl;
        if(smallest>=r){
            second_smallest=smallest;
            smallest=r;
        }
        else{
            if(second_smallest>r) second_smallest=r;
        }
        //cout<<"smallest, second smallest= "<<smallest<<","<<second_smallest<<endl;
    }
    total_marks-=(smallest+second_smallest);
    cin>>pla;
    bool cheat=false;
    if(pla==1) cheat=true;
    //cout<<"finally"<<total_marks<<endl;
    return cheat;
 }

  bool quiz_marks(int& total_marks){ //we are going to use a simpler code here as we just need to remove 1 out of 6
    int smallest,pla; //pla is for plagiarism
    /*How this function will work-
    We first assume that the first number is the smallest number. Now every time you input a number, it gets added to the total_marks.
    If smallest number encounters an r<smallest, it changes its value to r
    */
    cin>>smallest;//We assume for now that the first number is the smallest number
    total_marks+=smallest; //We have to somehow account for that number
    //cout<<"you're here"<<endl;
    for(int i=0;i<5;i++){
        int r;
        //cout<<"total_marks="<<total_marks<<endl;
        cin>>r;
        total_marks+=r;

        if(smallest>=r){
            smallest=r;
        }
        //cout<<"smallest= "<<smallest<<endl;
    }
    total_marks-=(smallest);
    cin>>pla;
    bool cheat=false;
    if(pla==1) cheat=true;
    //cout<<"finally"<<total_marks<<endl;
    return cheat;
 }

 int midsem_marks(){
    int mid_marks;
    cin>>mid_marks;
    return mid_marks;
 }

 int endsem_marks(){
    int end_marks;
    cin>>end_marks;
    return end_marks;
 }

 bool project_marks(int& total_marks){
    int pla, marks;
    cin>>marks>>pla;
    if(total_marks>80) total_marks+=10*marks;
    bool cheat=false;
    if(pla==1) cheat=true;
    return cheat;
 }

 int calculate_grade(int total_marks, bool plag_in_quiz, bool plag_in_lab, bool plag_in_project){
    int grade;
    if(total_marks>90&&total_marks<=100) grade=10;
    else if(total_marks>80&&total_marks<=90) grade=9;
    else if(total_marks>70&&total_marks<=80) grade=8;
    else if(total_marks>60&&total_marks<=70) grade=7;
    else if(total_marks>50&&total_marks<=60) grade=6;
    else if(total_marks>40&&total_marks<=50) grade=5;
    else if(total_marks>30&&total_marks<=40) grade=4;
    else if(total_marks>=0&&total_marks<=30) grade=0;
    if(plag_in_quiz==true) grade--;
    if(plag_in_project==true) grade--;
    if(plag_in_lab==true) grade--;
    if(grade<4) grade=0;
    return grade;
 }
