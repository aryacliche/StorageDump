//Welcome to the general mess

//shooter.h
#include <simplecpp>
/* Shooter Vars */
const int SHOOTER_START_X = 250;
const int SHOOTER_START_Y = 425;
const int SHOOTER_VX = 400;

/* Game Window Vars */
const int WINDOW_X = 500;
const int WINDOW_Y = 500;


/* Simulation Vars */
const double STEP_TIME = 0.02;

/* Game Vars */
const int PLAY_Y_HEIGHT = 450;
const int LEFT_MARGIN = 70;
const int TOP_MARGIN = 20;
const int BOTTOM_MARGIN = (PLAY_Y_HEIGHT+TOP_MARGIN);

class Bullet
{
private:
    Rectangle rect; // the rectangle representing the bullet
    double vy; // velocity in y direction

public:
    Bullet(double center_x, double center_y, double width=10, double height=10, double vy_=200, Color color=COLOR(255, 0, 0)) {
        // Bullet constructor
        rect = Rectangle(center_x, center_y, width, height);
        rect.setColor(color);
        rect.setFill(true);
        vy = vy_;
    }

    bool nextStep(double t)
    {
        // move the bullet
        double new_y = rect.getY() - vy*t;
        if(new_y < (0-rect.getHeight()/2.0))   // out of canvas, so delete it
        {
            return false;
        }
        rect.moveTo(rect.getX(), new_y);
        return true;
    }

    double get_width()
    {
        // return the width of the bullet
        return rect.getWidth();
    }

    double get_height()
    {
        // return the height of the bullet
        return rect.getHeight();
    }

    double get_center_x()
    {
        // return the x coordinate of the center of the bullet
        return rect.getX();
    }

    double get_center_y()
    {
        // return the y coordinate of the center of the bullet
        return rect.getY();
    }

};
 //Bubble.h

/* Bubble Vars */
const int BUBBLE_START_X = 250;
const int BUBBLE_START_Y = 50;
const int BUBBLE_DEFAULT_RADIUS = 10;
const int BUBBLE_RADIUS_THRESHOLD = 10;
const int BUBBLE_DEFAULT_VX = 100;
const int BUBBLE_DEFAULT_VY = 100;

class Bubble
{
private:
    Circle circle;  // the circle representing the bubble
    double vx, vy;  // velocity in x and y direction
    Color color;    // color of the bubble

public:
    Bubble(double cx, double cy, double r, double vx_=BUBBLE_DEFAULT_VX, double vy_=BUBBLE_DEFAULT_VY, Color color_=COLOR(0, 255, 0))
    {
        // Bubble constructor
        color = color_;
        circle = Circle(cx, cy, r);
        circle.setColor(color);
        circle.setFill(false);

        vx = vx_;
        vy = vy_;
    }

    void nextStep(double t)
    {
        // move the bubble
        double new_x = circle.getX() + vx*t;
        double new_y = circle.getY() + vy*t;

        if ((vx < 0 && new_x < (0 + circle.getRadius())) // bounce along X direction at left border
            ||
            (vx > 0 && new_x > (WINDOW_X - circle.getRadius()))) // bounce along X direction at right border
        {

            vx = -vx;
            new_x = circle.getX() + vx*t;

        }
        /*if(vy>0 && new_y<(20) || vy<0 && new_y>(520))
        {
            vy=-vy;
            new_y=circle.getY() + vy*t;
        }*/

        circle.move(vx*t, vy*t);
    }

    double get_radius()
    {
        // return the radius of the bubble
        return circle.getRadius();
    }

    double get_center_x()
    {
        // return the x coordinate of the center of the bubble
        return circle.getX();
    }

    double get_center_y()
    {
        // return the y coordinate of the center of the bubble
        return circle.getY();
    }

    double get_vx()
    {
        // return the x velocity of the bubble
        return vx;
    }
    double get_vy()
    {
        // return the y velocity of the bubble
        return vy;
    }

    Color get_color()
    {
        // return the color of the bubble
        return color;
    }
};




class Shooter
{
private:
    Rectangle body; // The body of the shooter
    Circle head;    // The head of the shooter
    double vx;      // The x-velocity of the shooter
    Color color;    // The color of the shooter

public:
    Shooter(double position_x, double position_y, double vx_=100, double height=30, double width=18, double head_radius=8, Color color_=COLOR(0, 255, 0))
    {
        // Shooter constructor
        color = color_;

        // body (represented by a rectangle)
        body = Rectangle(position_x, position_y, width, height);
        body.setColor(color);
        body.setFill(true);

        // head (represented by a circle)
        head = Circle(position_x, position_y - height/2. - head_radius, head_radius);
        head.setColor(color);
        head.setFill(true);

        // initial velocity
        vx = vx_;
    }

    Bullet shoot()
    {
        // shoot a bullet
        return Bullet(head.getX(), head.getY());
    }

    void move(double t, bool is_moving_left)
    {
        // move the shooter
        double vel = vx;
        if (is_moving_left)
        {
            vel = -vel;
        }

        double new_body_x = body.getX() + vel*t;
        double new_head_x = head.getX() + vel*t;

        if (vel < 0 && new_body_x < (0 + body.getWidth()/2.0)) // stop moving along X direction at left border (if pressed A)
        {
            new_body_x = 0 + body.getWidth()/2.0;
            new_head_x = 0 + body.getWidth()/2.0;
        }
        else if (vel > 0 && new_body_x > (WINDOW_X - body.getWidth()/2.0)) // stop moving along X direction at right border (if pressed D)
        {
            new_body_x = WINDOW_X - body.getWidth()/2.0;
            new_head_x = WINDOW_X - body.getWidth()/2.0;
        }

        body.moveTo(new_body_x, body.getY());
        head.moveTo(new_head_x, head.getY());
    }

    double get_head_center_x()
    {
        // return the x coordinate of the center of the head
        return head.getX();
    }

    double get_head_center_y()
    {
        // return the y coordinate of the center of the head
        return head.getY();
    }

    double get_head_radius()
    {
        // return the radius of the head
        return head.getRadius();
    }

    double get_body_center_x()
    {
        // return the x coordinate of the center of the body
        return body.getX();
    }

    double get_body_center_y()
    {
        // return the y coordinate of the center of the body
        return body.getY();
    }

    double get_body_width()
    {
        // return the width of the body
        return body.getWidth();
    }

    double get_body_height()
    {
        // return the height of the body
        return body.getHeight();
    }

};

//Main.cpp



void move_bullets(vector<Bullet> &bullets){
    // move all bullets
    for(unsigned int i=0; i<bullets.size(); i++){
        if(!bullets[i].nextStep(STEP_TIME)){
            bullets.erase(bullets.begin()+i);
        }
    }
}

void move_bubbles(vector<Bubble> &bubbles){
    // move all bubbles
    for (unsigned int i=0; i < bubbles.size(); i++)
    {
        bubbles[i].nextStep(STEP_TIME);
    }
}

vector<Bubble> create_bubbles()
{
    // create initial bubbles in the game
    vector<Bubble> bubbles;
    bubbles.push_back(Bubble(WINDOW_X/2.0, BUBBLE_START_Y, BUBBLE_DEFAULT_RADIUS, -BUBBLE_DEFAULT_VX, 0, COLOR(255,105,180)));
    bubbles.push_back(Bubble(WINDOW_X/4.0, BUBBLE_START_Y, BUBBLE_DEFAULT_RADIUS, BUBBLE_DEFAULT_VX, 0, COLOR(255,105,180)));
    return bubbles;
}


int main()
{
    initCanvas("Bubble Trouble", WINDOW_X, WINDOW_Y);

    Line b1(0, PLAY_Y_HEIGHT, WINDOW_X, PLAY_Y_HEIGHT);
    b1.setColor(COLOR(0, 0, 255));

    string msg_cmd("Cmd: _");
    Text charPressed(LEFT_MARGIN, BOTTOM_MARGIN, msg_cmd);

    // Intialize the shooter
    Shooter shooter(SHOOTER_START_X, SHOOTER_START_Y, SHOOTER_VX);

    // Initialize the bubbles
    vector<Bubble> bubbles = create_bubbles();

    // Initialize the bullets (empty)
    vector<Bullet> bullets;

    XEvent event;

    // Main game loop
    while (true)
    {
        bool pendingEvent = checkEvent(event);
        if (pendingEvent)
        {
            // Get the key pressed
            char c = charFromEvent(event);
            msg_cmd[msg_cmd.length() - 1] = c;
            charPressed.setMessage(msg_cmd);

            // Update the shooter
            if(c == 'a')
                shooter.move(STEP_TIME, true);
            else if(c == 'd')
                shooter.move(STEP_TIME, false);
            else if(c == 'w')
                bullets.push_back(shooter.shoot());
            else if(c == 'q')
                return 0;
        }

        // Update the bubbles
        move_bubbles(bubbles);

        // Update the bullets
        move_bullets(bullets);

        wait(STEP_TIME);
    }
}
