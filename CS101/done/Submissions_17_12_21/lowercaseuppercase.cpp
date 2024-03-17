#include<simplecpp>

main_program{
    char h; //The letter that is going to be inputted
    cin>>h;
    if(h>=97&&h<=(96+26)) cout<<"lowercase"; //97 is the ASCII value of lowercase a thus we add 25 to it to find the ASCII code of lowercase z
    else if(h<=(64+26)&&h>=65) cout<<"uppercase"; //65 is the ASCII value of uppercase A thus we add 25 to it to find the ASCII code of uppercase Z
    else cout<<"this is not alphabet"; //In case it is not a lowercase or uppercase alphabet, it is definitely not an alphabet
}
