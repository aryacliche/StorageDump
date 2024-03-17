#include<iostream>
#include<cmath>
using namespace std;

int evaluate(int w, int h, int i){

    if(i==1) return w*h;

    /*cout<<"square- "<<(h/i)*(w/i)<<endl;
    cout<<"rect1- "<<h-(h/i)*i<<" "<<(w/i)*i<<" "<<i/2<<endl;
    cout<<"rect2- "<<(h/i)*i<<" "<<w-(w/i)*i<<" "<<i/2<<endl;
    cout<<"rect3- "<<h-(h/i)*i<<" "<<w-(w/i)*i<<" "<<i/2<<endl;*/

    return (h/i)*(w/i) //number of ixi tiles
        + evaluate(h-(h/i)*i, (w/i)*i, i/2) //1st rectangle
        + evaluate((h/i)*i, w-(w/i)*i, i/2) //2nd rectangle
        + evaluate(h-(h/i)*i, w-(w/i)*i, i/2); //3rd rectangle
}

int min_tiles(int w, int h){
    //This seems like a question on recursion. How do we go about it?
    //It is obvious that we will get min number of tiles if we maximise number of 4x4 tiles and then 2x2 tiles

    /*As it turns out, we should be able to divide our original rectangle into 4 parts-
    1. Largest possible rectangle with sides equal to multiples of 4
    2 and 3 and 4. 3 smaller rectangles
    Visit https://imgur.com/a/XsR36uW for better understanding of the diagram

    Thus the dimensions are of the rectangles are-
    0. (h/4)*4, (w/4)*4
    1. h-(h/4)*4, (w/4)*4
    2. (h/4)*4, w-(w/4)*4
    3. h-(h/4)*4, w-(w/4)*4

    We thus evaluate the last 3 of these individual rectangles but with 2x2 tiles now and to get 3 more rectangles each. For 1x1 rectangles, now we just write the area as answer*/

    int min_number_of_tiles=evaluate(w,h,4); //We define another function as recursion isn't possible for this function
    return min_number_of_tiles;
}

