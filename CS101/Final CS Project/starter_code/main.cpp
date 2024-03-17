#include <simplecpp>
#include "shooter.h"
#include "bubble.h"

/* Simulation Vars */
const double STEP_TIME = 0.02;

/* Game Vars */
const int PLAY_Y_HEIGHT = 450;
const int LEFT_MARGIN = 70;
const int TOP_MARGIN = 20;
const int BOTTOM_MARGIN = (PLAY_Y_HEIGHT+TOP_MARGIN);


void move_bullets(vector<Bullet> &bullets){
    // move all bullets
    for(unsigned int i=0; i<bullets.size(); i++){
        if(!bullets[i].nextStep(STEP_TIME)){
            bullets.erase(bullets.begin()+i);
            //cout<<"--------------------------------------------------------------------"<<endl;
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

void check_collision(vector<Bullet> &bullets, vector<Bubble> &bubbles){
    //We just go through the 2 vectors and check if the positions of bullets and bubbles are close enough for them to be touching
    //In order to ease our computation for a smoother game, let us approximate the bullet to a circle with radius=(a+ aroot(2))/2 (Avg of half diagonal and half side)

    for(unsigned int i=0;i<bubbles.size();i++){
        for(unsigned int j=0;j<bullets.size(); j++){
            double distance_between_centres=pow((bubbles[i].get_center_x()-bullets[j].get_center_x()),2)
                                        +pow((bubbles[i].get_center_y()-bullets[j].get_center_y()),2);
            distance_between_centres=sqrt(distance_between_centres);

            double approx_bullet_radius=(bullets[j].get_width())/2;

            double approx_sum_of_radius= approx_bullet_radius + bubbles[i].get_radius();

            //cout<<"approx_sum_of_radius="<<approx_sum_of_radius<<endl;
            //cout<<"distance_between_centres="<<distance_between_centres<<endl;

            if(approx_sum_of_radius>distance_between_centres){
                //cout<<"yay!"<<endl;
                bullets.erase(bullets.begin()+j);
                bubbles.erase(bubbles.begin()+i);
            }
        }
    }
}

bool check_death(vector<Bubble> &bubbles, Shooter shooter){
    /*We realised that our shooter is a complex shape that can be approximated to a rectangle with width=shooter.get_body_width()
    and height=shooter.get_body_height()+shooter.get_head_radius();*/

    /* We can approximate a rectangle that is outside this rectangle with a leeway of bubble.get_radius(); to get a zone of width=
    shooter.get_body_width()+2*bubbles[i].get_radius() and height=shooter.get_body_height()+shooter.get_head_radius()+bubbles[i].get_radius();*/

    /*The zone looks like the following-
    top-> shooter.get_body_center_y()-( shooter.get_body_height()/2 + shooter.get_head_radius() + bubbles[i].get_radius())
    left edge-> shooter.get_body_center_x()-( shooter.get_width()/2 + bubbles[i].get_radius())
    right edge-> shooter.get_body_center_x()+( shooter.get_width()/2 + bubbles[i].get_radius())
    bottom edge is inconsequential as the bubble can never hit from below*/
    for(unsigned int i=0;i<bubbles.size(); i++){
        double top_edge= shooter.get_body_center_y()-( shooter.get_body_height()/2 + shooter.get_head_radius() + bubbles[i].get_radius());
        double left_edge=shooter.get_body_center_x()-( shooter.get_body_width()/2 + bubbles[i].get_radius());
        double right_edge=shooter.get_body_center_x()+( shooter.get_body_width()/2 + bubbles[i].get_radius());

        /*cout<<"top_edge="<<top_edge<<endl;
        cout<<"left_edge="<<left_edge<<endl;
        cout<<"right_edge="<<right_edge<<endl;
        cout<<"-----------------"<<endl;
        cout<<"bubbles[i].get_center_x()="<<bubbles[i].get_center_x()<<endl;
        cout<<"bubbles[i].get_center_y()="<<bubbles[i].get_center_y()<<endl;
        cout<<"----------------------------------------------------------"<<endl;*/

        if( bubbles[i].get_center_x()<right_edge && bubbles[i].get_center_x()>left_edge && bubbles[i].get_center_y()>top_edge)
         return true;
    }
    return false;
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

    bool lost=false;
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

        check_collision(bullets, bubbles); //We defined this function in bubble.h

        if(check_death(bubbles, shooter)){
            lost=true;
            break;
        }

        if(bubbles.size()==0){
            break;
        }

        wait(STEP_TIME);
    }
    if(lost){
        Text Ya_dead(250, (TOP_MARGIN+BOTTOM_MARGIN)/2, "Great you managed to disappoint more people than was earlier deemed possible");
        while(true);
    }
    else{
        Text Win(250, (TOP_MARGIN+BOTTOM_MARGIN)/2, "Congratulations! You have won");
        while(true);
    }

}
