/* 
Ball class

*/

class Ball { 
  private float posX; 
  private float posY; 
  private float velocityX = 0; 
  private float velocityY;
  private float ballLength = width/60;
  
  Ball(){ 
    
  }
  
  void displayBall(){ 
    
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
