
class Player{ 
  private float yPosPaddle = 24*height/25;
  private float paddleLen = width/7;
  private float paddleHeight = height/30;
  
  Player(){ 
  }

  
  float getPosY(){ 
     return yPosPaddle; 
  }
  
  void displayPaddle(){ 
     fill(255);
     rect(mouseX,yPosPaddle,paddleLen,paddleHeight);
  }
  
  void collisionBall(Ball ball){ 
    
  }
}
