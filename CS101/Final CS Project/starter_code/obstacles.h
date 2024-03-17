#include<simplecpp>

class Obstacles{
private:
    Circle circ;

public:
    Obstacles(int x, int y, double r){
        circ=Circle(x, y, r);
        circ.setFill(true);
    }

    int get_x(){
        return circ.getX();
    }

    int get_y(){
        return circ.getY();
    }

    double get_radius(){
        return circ.getRadius();
    }
};
