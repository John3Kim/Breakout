
class Player{ 
  private float yPosPaddle;
  private float paddleLen = width/7;
  private float paddleHeight = height/30;
  
  Player(float yPosPaddle){ 
    this.yPosPaddle = yPosPaddle;
  }

  
  float getPosY(){ 
     return yPosPaddle; 
  }
  
  void displayPaddle(){ 
     rect(mouseX,yPosPaddle,paddleLen,paddleHeight);
  }
}
