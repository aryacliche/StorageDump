#include<simplecpp>

main_program{
    //Vigenere square problem

    cout<<"Enter the message:"<<endl;
    char msg[900];
    cin.getline(msg, 900);

    cout<<"Enter the Keyword"<<endl;
    char keyword[128];
    cin.getline(keyword, 120);

    int len_key=0, len_msg=0;

    int i=0;
    while(msg[i]!='\0'){
        msg[i]=tolower(msg[i]);
        len_msg++;
        i++;
    }
    i=0;
    while(keyword[i]!='\0'){
        keyword[i]=tolower(keyword[i]);
        len_key++;
        i++;
    }

    //cout<<"msg="<<msg<<"\t Msg length="<<len_msg<<endl<<"keyword="<<keyword<<"\t keyword length="<<len_key<<endl;

    cout<<"Cipher:"<<endl;
    char cipher[600];
    for(int i=0; i<len_msg; i++){
        //cout<<i%len_key<<endl;
        char h=keyword[(i%len_key)];
        //cout<<"h="<<h<<endl;
        char plain_letter=msg[i];

        if(plain_letter>122 || plain_letter<97){
            cipher[i]=plain_letter;
            cout<<cipher[i];
            continue;
        }


        cipher[i]=((plain_letter-97+h-97)%26+65);
        cout<<cipher[i];
    }

    cout<<endl<<"Deciphered-"<<endl;
    char decipher[600];
    for(int i=0; i<len_msg; i++){
        char h=keyword[i%len_key];
        char cipher_letter=cipher[i];

        if(cipher_letter>90 || cipher_letter<65){
            decipher[i]=cipher_letter;
            cout<<decipher[i];
            continue;
        }

        int dumb_number=cipher_letter-65-(h-97);
        if(dumb_number<0){
            dumb_number+=26;
        }


        decipher[i]=( dumb_number )%26 + 97;
        cout<<decipher[i];
    }
}
