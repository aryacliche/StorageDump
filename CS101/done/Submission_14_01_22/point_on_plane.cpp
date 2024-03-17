#include<simplecpp>

bool point_on_plane(double* p1_x, double* p1_y, double* p1_z, double* p2_x, double* p2_y, double* p2_z, double* p3_x, double* p3_y, double* p3_z, double* q_x, double* q_y, double* q_z, double* dist){
    //we are getting the addresses of our coordinates so let us make our lives easier and use local variables
    double ax=*p1_x, ay=*p1_y, az=*p1_z, bx=*p2_x, by=*p2_y, bz=*p2_z, cx=*p3_x, cy=*p3_y, cz=*p3_z;
    double d=*dist, qz=*q_z, qy=*q_y, qx=*q_x;
    //For a point to lie in a plane, distance from that plane should be 0. We can calculate distance by using the following formula
    //(q-a).{(b-a)x(c-a)}/mod(b-a)x(c-a)
    //cross product=(b-a)x(c-a)=k((bx-ax)(cy-ay)-(by-ay)(cx-ax))+i((by-ay)(cz-az)-(cy-ay)(bz-az))+j((bz-az)(cx-ax)-(cz-az)(bx-ax))
    d=((by-ay)*(cz-az)-(cy-ay)*(bz-az))*(qx-ax)+((bz-az)*(cx-ax)-(cz-az)*(bx-ax))*(qy-ay)+((bx-ax)*(cy-ay)-(by-ay)*(cx-ax))*(qz-az);
    double denom=sqrt(pow((by-ay)*(cz-az)-(cy-ay)*(bz-az),2)+pow((bz-az)*(cx-ax)-(cz-az)*(bx-ax), 2)+pow((bx-ax)*(cy-ay)-(by-ay)*(cx-ax),2));
    *dist=abs(d)/denom;
    if(*dist==0) return true;
    return false;
}
