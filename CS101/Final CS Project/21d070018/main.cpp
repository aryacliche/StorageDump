#include <simplecpp>
#include "shooter.h"
#include "bubble.h"


/* Simulation Vars */
const double STEP_TIME = 0.02;

/* Game Vars */
const int PLAY_Y_HEIGHT = 450;
const int LEFT_MARGIN = 70;
const int RIGHT_MARGIN=500-70;
const int TOP_MARGIN = 20;
const int BOTTOM_MARGIN = (PLAY_Y_HEIGHT+TOP_MARGIN);

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

vector<Bubble> create_bubbles(int level)
{
    // create initial bubbles in the game
    vector<Bubble> bubbles;
    for(int i=1; i<=level; i++){
        int r=(level*125);
        int g=(level*1964);
        int b=((level+3)*1239);
        r=r%255;
        g=g%255;
        b=b%255;
        bubbles.push_back(Bubble(WINDOW_X*(double)i/(level+1), BUBBLE_START_Y, pow(2,level-1)*BUBBLE_DEFAULT_RADIUS, pow(-1,i)*((double)level/i)*BUBBLE_DEFAULT_VX, 0, COLOR(r,b, g)));
    }
    return bubbles;
}

void check_obstacle_collision(vector<Bullet> &bullets, vector<Bubble> &bubbles, vector<Obstacles> &obstacles){
    //First let us see for bullet and obstacle collision-
    for(unsigned int i=0; i<bullets.size(); i++){
        for(int j=0; j<obstacles.size(); j++){
            double distance_between_centers=pow(obstacles[j].get_x()-bullets[i].get_center_x(), 2)+
                                            pow(obstacles[j].get_y()-bullets[i].get_center_y(), 2);
            distance_between_centers=sqrt(distance_between_centers);

            double approx_sum_of_radii=obstacles[j].get_radius() + bullets[i].get_width()/2.0;

            if(approx_sum_of_radii > distance_between_centers){
                bullets.erase(bullets.begin()+i);
            }
        }
    }

    //Now let us see for bubbles and obstacle collision-
    for(unsigned int i=0; i<bubbles.size(); i++){
        for(int j=0; j<obstacles.size(); j++){
            double delta_x=obstacles[j].get_x()-bubbles[i].get_center_x();
            double delta_y=obstacles[j].get_y()-bubbles[i].get_center_y();

            double distance_between_centers=pow(delta_x, 2)+
                                                pow(delta_y, 2);
            distance_between_centers=sqrt(distance_between_centers);

            double approx_sum_of_radii=obstacles[j].get_radius() + bubbles[i].get_radius();

            if(approx_sum_of_radii > distance_between_centers){
                //We have slope of the lines joining the centres using arctan(delta_y/delta_x)
                double theta=atan(delta_y/delta_x);
                double vy=bubbles[i].get_vy();
                double vx=bubbles[i].get_vx();

                //new updated values after reflection using trigonometry
                double vy_=(vy*cos(theta) - vx*sin(theta))*cos(theta)
                           - (vx*cos(theta) + vy*sin(theta))*sin(theta);
                double vx_= - (vx*cos(theta)+vy*sin(theta))*cos(theta) -
                            (vy*cos(theta)-vx*sin(theta))*sin(theta);

                //updating the new values into the bubbles
                bubbles[i].change_velocity(vx_, vy_);

            }
        }
    }
    return;
}

void check_collision(vector<Bullet> &bullets, vector<Bubble> &bubbles, int &score){
    //We just go through the 2 vectors and check if the positions of bullets and bubbles are close enough for them to be touching
    //In order to ease our computation for a smoother game, let us approximate the bullet to a circle with radius=(a)/2 (half side)

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
                score++;

                if(bubbles[i].get_radius()==BUBBLE_DEFAULT_RADIUS/2) //For bursting the bubble
                    bubbles.erase(bubbles.begin()+i);

                //For creating new bubbles
                else{
                    double initial_vx=bubbles[i].get_vx();
                    double initial_vy=bubbles[i].get_vy();
                    double initial_x=bubbles[i].get_center_x();
                    double initial_y=bubbles[i].get_center_y();
                    double initial_radius=bubbles[i].get_radius();
                    Color initial_color=bubbles[i].get_color();
                    bubbles.erase(bubbles.begin()+i);

                    //I want to conserve horizontal momentum to make the game more interesting
                    //I am also conserving vertical momentum by assuming the bullet's mass is equal to the mass of the ball with radius=BUBBLE_DEFAULT_RADIUS
                    /* For that, we know that vy that will be passed=
                    intial_vy+momentum of bullet/mass of intial ball=intial_vy - 200 * (BUBBLE_DEFAULT_RADIUS/initial_radius)^3 */

                    bubbles.push_back(Bubble(initial_x, initial_y, initial_radius/2.0, -initial_vx, initial_vy - 200 * pow((BUBBLE_DEFAULT_RADIUS/initial_radius),3), initial_color));
                    bubbles.push_back(Bubble(initial_x, initial_y, initial_radius/2.0, 2*initial_vx, initial_vy - 200 * pow((BUBBLE_DEFAULT_RADIUS/initial_radius),3), initial_color));
                }
            }
        }
    }
    return;
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

    int final_level=0, final_score=0; //To keep track of the final score

    for(int level_no=1; ; level_no++){ //The for loop made for levels
        int score=0;

        string level("Level: _");
        level[level.length() - 1] = 48+level_no;
        Text level_number(250, BOTTOM_MARGIN, level);

        string score_card("Score:  _");
        score_card[score_card.length()-1]=48+final_score;
        Text score_board(RIGHT_MARGIN ,BOTTOM_MARGIN, score_card);

        //Let us make some obstacles to make the game easier for the user
        vector<Obstacles> obstacles;
        {
            Text Select_Obstacles(250, 250, "Click on any point to add a circular obstacle to make your job easier");
            Text Select_Obstacles_2(250, 280, "You can select upto 3 and then click on 'Done'");
            Text done_no_need(470, 30, "Done");
            Rectangle box(470, 30, 50, 50);


            for(int i=0; i<3; i++){
                int posn=getClick();
                int x=posn/65536;
                int y=posn%65536;

                if(x>445&&x<495&&y>5&&y<55) break; //User clicks on the 'Done' button

                obstacles.push_back(Obstacles(x, y, 20)); //We added the new obstacle to the vector
            }
        }

        string time("Time:  _");
        Text Timer(LEFT_MARGIN, TOP_MARGIN, time);
        double t=0; //for keeping track of time

        // Intialize the shooter
        Shooter shooter(SHOOTER_START_X, SHOOTER_START_Y, SHOOTER_VX);

        // Initialize the bubbles
        vector<Bubble> bubbles = create_bubbles(level_no);

        // Initialize the bullets (empty)
        vector<Bullet> bullets;

        XEvent event;

        bool lost=false; //To see if the loop stopped because of you winning or losing
        // Main game loop
        while (true)
        {
            //update the time
            int time_limit=360/level_no;
            int actual_time_left=time_limit- t/15;

            if(actual_time_left<0){
                lost=true;
                break;
            }

            if(actual_time_left<10){
                time[time.length() - 1] = 48+ actual_time_left;
                time[time.length() - 2] = 48;
                time[time.length() - 3] = 48;
            }
            else if(actual_time_left<100){
                time[time.length() - 1] = 48+ actual_time_left%10;
                time[time.length() - 2] = 48+ actual_time_left/10;
                time[time.length() - 3] = 48;
            }
            else{
                time[time.length() - 1] = 48+ actual_time_left%10;
                time[time.length() - 2] = 48+ (actual_time_left/10 - (actual_time_left/100)*10);
                time[time.length() - 3] = 48+ actual_time_left/100;
            }
            Timer.setMessage(time);
            //time successfully updated

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

            //Sees if any bullet has hit any bubble and updates score
            check_collision(bullets, bubbles, score);

            //Sees if any bullets/bubbles have collided with an obstacle
            check_obstacle_collision(bullets, bubbles, obstacles);

            //Score board updates
            if(score<10){
                score_card[score_card.length() - 1] = 48+ score;
                score_card[score_card.length() - 2] = 48;
                score_card[score_card.length() - 3] = 48;
            }
            else if(score<100){
                score_card[score_card.length() - 1] = 48+ score%10;
                score_card[score_card.length() - 2] = 48+ score/10;
                score_card[score_card.length() - 3] = 48;
            }
            else{
                score_card[score_card.length() - 1] = 48+ score%10;
                score_card[score_card.length() - 2] = 48+ (score/10 - (score/100)*10);
                score_card[score_card.length() - 3] = 48+ score/100;
            }
            score_board.setMessage(score_card);

            if(check_death(bubbles, shooter)){
                lost=true;
                break;
            }

            if(bubbles.size()==0){ //Once all the bubbles have been burst, you can move to the next level
                break;
            }

            wait(STEP_TIME);
            t++;
        }
        if(lost){
            Text Ya_dead(250, (TOP_MARGIN+BOTTOM_MARGIN)/2, "Wasted");
            wait(5);
            final_level=level_no;
            final_score+=score;
            break;
        }
        else{
            string congrats("Congratulations! You have passed level _");
            congrats[congrats.length() - 1] = level_no+48;
            Text Win(250, (TOP_MARGIN+BOTTOM_MARGIN)/2, congrats);
            wait(5);

            final_score+=score;
            continue;
        }
    }
    //Now we are out of the main loop
    string bye_bye("You went up to the level of _");
    bye_bye[bye_bye.length() - 1] = final_level+48;
    Text Goodbye(250, (TOP_MARGIN+BOTTOM_MARGIN)/2, bye_bye);


    string score_tally("Your final score was-  _");
    if(final_score<10){
        score_tally[score_tally.length() - 1] = 48+ final_score;
        score_tally[score_tally.length() - 2] = 48;
        score_tally[score_tally.length() - 3] = 48;
    }
    else if(final_score<100){
        score_tally[score_tally.length() - 1] = 48+ final_score%10;
        score_tally[score_tally.length() - 2] = 48+ final_score/10;
        score_tally[score_tally.length() - 3] = 48;
    }
    else{
        score_tally[score_tally.length() - 1] = 48+ final_score%10;
        score_tally[score_tally.length() - 2] = 48+ (final_score/10 - (final_score/100)*10);
        score_tally[score_tally.length() - 3] = 48+ final_score/100;
    }
    Text Score_Finale(250, (TOP_MARGIN+BOTTOM_MARGIN)/2+30, score_tally);
    while(true);
}
