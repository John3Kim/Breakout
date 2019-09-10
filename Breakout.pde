/* 
@title: Breakout 
@author: John Kim(John3Kim)
@desc: This is a simple implementation of the game 
Breakout!
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
}

void draw(){ 
  background(0);
  player.displayPaddle();
  ball.displayBall(); 
  ball.updateXPos(); 
  ball.updateYPos();
  bricks.displayBricks();
}
