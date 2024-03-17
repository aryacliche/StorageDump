#include<simplecpp>

struct Explosion{
    int x, y, vx, vy;

    vector<Explosion> create_explosion(int initial_x, int initial_y){
        Circle e[5];
        for(int i=0; i<5;i++){
            e[0]=Circle(initial_x, initial_y, 5);
        }
        float gravity=0.05, vx1=1.28, vx2=1, vx3=1.366, vx4=-0.17, vx5=-0.707, vx6=-1.22, vy1=-0.597, vy2=-1, vy3=-1.366, vy4=-1.40, vy5=-1.22, vy6=-0.707;
        //Above are some randomly generated values for the projectiles
        double vx[5]={}

    }
};
