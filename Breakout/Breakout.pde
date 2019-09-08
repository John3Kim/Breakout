/* 
@title: Breakout 
@author: John Kim(John3Kim)
@desc: This is a simple implementation of the game 
Breakout!
*/

Player player;

void setup(){ 
    rectMode(CENTER); 
    
    size(480,720);
    
    player = new Player(24*height/25);
}

void draw(){ 
  background(0);
  player.displayPaddle();
}
