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

void emission(int x, int y){
    Circle e1(x, y, 5), e2(x, y, 5), e3(x, y, 5), e4(x, y, 5), e5(x, y, 5), e6(x, y, 5);
    float gravity=0.05, vx1=1.28, vx2=1, vx3=1.366, vx4=-0.17, vx5=-0.707, vx6=-1.22, vy1=-0.597, vy2=-1, vy3=-1.366, vy4=-1.40, vy5=-1.22, vy6=-0.707;
    repeat(50){
        e1.move(vx1, vy1);
        e2.move(vx2, vy2);
        e3.move(vx3, vy3);
        e4.move(vx4, vy4);
        e5.move(vx5, vy5);
        e6.move(vx6, vy6);

        vy1+=gravity;
        vy2+=gravity;
        vy3+=gravity;
        vy4+=gravity;
        vy5+=gravity;
        vy6+=gravity;
    }
    return;
}

void move_bullets(vector<Bullet> &bullets){
    // move all bullets
    for(unsigned int i=0; i<bullets.size(); i++){
        if(!bullets[i].nextStep(STEP_TIME)){
            bullets.erase(bullets.begin()+i);
            cout<<"--------------------------------------------------------------------"<<endl;
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
        bubbles.push_back(Bubble(WINDOW_X*(double)i/(level+1), BUBBLE_START_Y, i*BUBBLE_DEFAULT_RADIUS, pow(-1,i)*((double)level/i)*BUBBLE_DEFAULT_VX, 0, COLOR((level*138)%255,100,18*(level+1)%255)));
    }
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

                double initial_vx=bubbles[i].get_vx(); //Since collision has occured, that bubble will have to disappear so we
                double initial_vy=bubbles[i].get_vy(); //scavenging all information before we have to give it away
                double initial_x=bubbles[i].get_center_x();
                double initial_y=bubbles[i].get_center_y();
                double initial_radius=bubbles[i].get_radius();
                Color initial_color=bubbles[i].get_color();


                    bubbles.erase(bubbles.begin()+i);
                    emission(initial_x, initial_y);

                //For creating new bubbles
                if(initial_radius!=BUBBLE_DEFAULT_RADIUS/2){ //For regenerating new bubbles


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

    int final_level=0; //TO keep track of the final score
    for(int i=1; ; i++){ //The for loop made for levels

        string level("Level: _");
        level[level.length() - 1] = 48+i;
        Text level_number(250, BOTTOM_MARGIN, level);


        // Intialize the shooter
        Shooter shooter(SHOOTER_START_X, SHOOTER_START_Y, SHOOTER_VX);

        // Initialize the bubbles
        vector<Bubble> bubbles = create_bubbles(i);

        // Initialize the bullets (empty)
        vector<Bullet> bullets;

        XEvent event;

        bool lost=false; //To see if the loop stopped because of you winning or losing
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
            wait(5);
            final_level=i;
            break;
        }
        else{
            string congrats("Congratulations! You have passed level _");
            congrats[congrats.length() - 1] = i+48;
            Text Win(250, (TOP_MARGIN+BOTTOM_MARGIN)/2, congrats);
            wait(5);
            continue;
        }
    }
    //Now we are out of the main loop
    string bye_bye("You had to get out at the measly level of _");
    bye_bye[bye_bye.length() - 1] = final_level+48;
    Text Goodbye(250, (TOP_MARGIN+BOTTOM_MARGIN)/2, bye_bye);
    while(true);
}


