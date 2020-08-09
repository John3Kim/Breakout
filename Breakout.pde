/* 
@title: Breakout 
@author: John Kim(John3Kim)
@desc: This is a simple implementation of the game 
Breakout!
     //TODO: Need to figure out how the bricks vanish!
*/

Player player;
Ball ball;
Bricks bricks;

void setup(){ 
    rectMode(CENTER); 
    size(480,720);
    
    player = new Player();
    ball = new Ball();
    bricks = new Bricks();
    bricks.instantiateBricks();
}

void draw(){ 
  background(0);
  player.displayPaddle();
  
  bricks.displayBricks();

  ball.displayBall(); 
  ball.updateXPos(); 
  ball.updateYPos();
  
  player.collisionDetection(ball);
  bricks.brickCollision(ball);
  //debugPosition();
}

//  Print out X and Y coordinates
void debugPosition(){ 
   //print("PlayerX: " + player.getYPosition() + "\n"); 
   print("Mouse Y: " + mouseY + "\n");
   print("Mouse X: " + mouseX + "\n"); 
   //print("BallX: " + ball.getXPosition() + "\n");
   //print("BallY: " + ball.getYPosition() + "\n");
}
