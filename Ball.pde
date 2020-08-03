/* 
Ball class

The class that controls the ball for the game

*/

class Ball { 
  private float posX = width/2; 
  private float posY = 10*height/11; 
  private float velocityX = 5; 
  private float velocityY = 5;
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
  
  float getXPosition(){ 
    return posX; 
  }
  
  float getYPosition(){ 
    return posY; 
  }
  
  float getVelocityX(){ 
    return velocityX;
  }
  
  float getVelocityY(){ 
    return velocityY;
  }
  
  void setVelocityX(float velocity){ 
     velocityX = velocity;
  }
  
  void setVelocityY(float velocity){ 
     velocityY = velocity;
  }
  
}
