#include<simplecpp>

main_program{
    double basic, gross, hra, da; //basic=basic salary, gross=gross salary, hra and da are self explanatory
    cin>>basic; //We ask user to input basic salary
    if(basic<=10000){ //We use constraints
        hra=0.2*basic; da=0.8*basic;
    }
    else if(basic<=20000){ //We need not even use basic>10000, as it is in the else if condition
        hra=0.25*basic; da=0.9*basic;
    }
    else{ //In case basic salary is much higher
        hra=0.3*basic; da=0.95*basic; //We use 0.95 instead of 95%
    }
    gross=basic+hra+da; //We add them to get total salary
    cout<<gross;// which we then print
}
