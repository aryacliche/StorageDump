#include<iostream>
#include<cmath>
using namespace std;

class MyClock{
private:
    int seconds, minutes, hours;

public:
    MyClock(int a){
        seconds=a;
        minutes=11;
        hours=10;
    }

    MyClock(int b, int a){
        seconds=a;
        minutes=b;
        hours=22;
    }

    MyClock(int c, int b, int a){
        seconds=a;
        minutes=b;
        hours=c;
    }

    void currentTime(){
        bool pm=false;
        int display_hours=hours;
        if(display_hours>=12){
            display_hours-=12;
            pm=true;
        }
        if(display_hours==0) display_hours=12;

        if(display_hours<10)
            cout<<"0"<<display_hours<<":";
        else
            cout<<display_hours<<":";
        if(minutes<10 && minutes>0)
            cout<<"0"<<minutes<<":";
        else if(minutes==0)
            cout<<"00"<<":";
        else
            cout<<minutes<<":";
        if(seconds<10 && seconds>0)
            cout<<"0"<<seconds;
        else if(seconds==0)
            cout<<"00";
        else
            cout<<seconds;
        if(pm)
            cout<<" PM"<<endl;
        else
            cout<<" AM"<<endl;

        return;
    }

    int operator<(MyClock &other){
        int display_hours1=hours, display_hours2=other.hours;

        if(display_hours1>12) display_hours1-=12;
        if(display_hours2>12) display_hours2-=12;
        if(display_hours1==0) display_hours1=12;
        if(display_hours2==0) display_hours2=12;
        //Our time is now in 12 hour format

        if(display_hours1<display_hours2) return 1;
        else if(display_hours1>display_hours2) return 0;
        else{
            if(minutes<other.minutes) return 1;
            else if(minutes>other.minutes) return 0;
            else{
                if(seconds<other.seconds) return 1;
                else return 0;
            }
        }
    }

    ~MyClock(){
        currentTime();
    }

};
