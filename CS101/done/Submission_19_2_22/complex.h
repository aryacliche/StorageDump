#include<iostream>
#include<cmath>

struct Complex{
    double real, imag;

    void print(){
        std::cout<<real;
        if(imag>0) std::cout<<" + "<<imag<<"i"<<std::endl;
        else std::cout<<" - "<<std::abs(imag)<<"i"<<std::endl;
    }

    double modulus(){
        double mod=real*real+imag*imag;
        mod=sqrt(mod);
        return mod;
    }

    double argument(){
        double arg=atan2(imag,real);
        return arg;
    }

    double abs_angle_between(Complex c){
        double arg1=argument();
        double arg2=c.argument();
        double angle=std::abs(arg1-arg2);
        if(angle>3.14159) angle=2*3.14159-angle;
        return angle;
    }

    Complex conjugate(){
        Complex c;
        c.real=real;
        c.imag=-imag;
        return c;
    }

    Complex add(Complex c){
        Complex c_temp;
        c_temp.real=real+c.real;
        c_temp.imag=imag+c.imag;
        return c_temp;
    }

    Complex multiply(Complex c){
        Complex c_temp;
        c_temp.real=real*c.real-imag*c.imag;
        c_temp.imag=real*c.imag+imag*c.real;
        return c_temp;
    }
};


