/* 
Ball class

*/

class Ball { 
  private float posX = width/2; 
  private float posY = 10*height/11; 
  private float velocityX = 1; 
  private float velocityY = 1;
  private float ballLength = width/50;
  
  Ball(){ 
  }
  
  void displayBall(){ 
      fill(255);
      rect(posX,posY,ballLength,ballLength);
  }

  void updateXPos(){ 
    posX = posX + velocityX;
   
    if(posX > width || posX < 0){
      velocityX = -velocityX; 
    } 
  } 
  
  void updateYPos(){ 
    posY = posY + velocityY;
   
    if(posY > height || posY < 0){
      velocityY = -velocityY; 
    } 
  } 
  
  
}
