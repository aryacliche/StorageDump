21D070018
Arya Vishe
--------------------------------------------------------------------------------------------------------------------------------------------

Features implemented-
1. Implemented a score and cumulative score counter that can be displayed
2. Implemented a countdown timer
3. Implemented a class that creates obstacles which absorbs bullets and reflects bubbles
4. Implemented a for loop that automates the levels along with the bubbles for that level.
_______________________________________________________________________________________________________________________________
Link for the recording- https://drive.google.com/drive/folders/1z2faF54iM-6dalhOqI5jYw8b83sqYaC5?usp=sharing
The video titled 'From_start_21d070018.webm' is the game as one can play it
The video titled 'Level_3_21d070018.webm' changed the initial value of level_no to showcase how level 3 would look like
--------------------------------------------------------------------------------------------------------------------------------------------
Documentation-
When main() is called, we create Text Objects for score, time, cmd and level which get incremented with as the program proceeds

We create a loop with a control variable as level_no which decides a lot of parameters used inside (e.g. bubbles, time_limit)

We create an Obstacles vector to store all of the obstacles that user wants in his playing field
These obstacles can help add variety to the game as well as make the game easier for the user depending on where s/he places the obstacles

We create the shooter, bubbles (based on level_no) and also a vector for bullets
(Note- The colour, number of bubbles, radius of each bubble- all are dependent on level_no thus we can make infinite such levels theoritically)

We use an infinite while loop for the next part ( while loop is terminated if all bubbles have been burst/ user dies/ time runs out)
The time counter depends experimentally on the number of iterations of main program that have passed
If timer hits 0, game ends. Initial time limit also depends on the level number (level_no).

We take the inputs continuously using Xevent and that is reflected in the position of shooter and number of existing bullets

We then check 3 functions-
1. check_collision- takes bubbles, bullets and score as arguments and then checks every pair of bullets and bubbles.
			It destroys both bullet and bubble if they come too close to each other and then updates score
			If bubble is too large for destruction, it gets divided into 2 bodies while maitaining the momentum

2. check_obstacle_collision- takes bubbles, bullets, obstacles as inputs and then if there is a collision of bullet and obstacle, bullet is destroyed
				on collision of bubble and obstacle, bubble is reflected using trigonometry

3. check_death- if bubbles hit the shooter, the shooter is killed and game is finished

If our main loop has to stop because of time running out/ shooter dying- a flag is set to true and while loop is broken and we can print necessary statements
If all bubbles are exhausted- we can just break the infinite loop and move on the next iteration of the outtermost loop for level_no
