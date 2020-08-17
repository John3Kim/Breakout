
class Player{ 
  private float yPositionPaddle = 24*height/25;
  private float paddleLen = width/7;
  private float paddleHeight = height/30;
  
  Player(){ 
  }

  float getYPosition(){ 
     return yPositionPaddle; 
  }
  
  
  void displayPaddle(){ 
     fill(255);
     rect(mouseX,yPositionPaddle,paddleLen,paddleHeight);
  }  
  
  
  void collisionDetection(Ball ball){
     // Horizontal dimensions
     float paddleLeftSideLength = mouseX - paddleLen/2; 
     float paddleRightSideLength = mouseX + paddleLen/2;
     
     //Vertical dimensions 
     float paddleUpperSideLength = yPositionPaddle + paddleHeight/2;
     float paddleLowerSideLength = yPositionPaddle - paddleHeight/2;
     
     float xVelocityCollision = 0;
     
     // Collision conditions
     boolean collisionX = ball.getXPosition() >= paddleLeftSideLength && ball.getXPosition() <= paddleRightSideLength; 
     boolean collisionY = ball.getYPosition() >= paddleLowerSideLength && ball.getYPosition() <= paddleUpperSideLength;
     
     boolean paddleLeftSideHit = ball.getXPosition() < mouseX && ball.getXPosition() >= paddleLeftSideLength;
     boolean paddleRightSideHit = ball.getXPosition() > mouseX && ball.getXPosition() <= paddleRightSideLength;
     
     if(collisionX && collisionY){ 
       
       // Y will always go the opposite direction
       ball.setVelocityY(-ball.getVelocityY()); 
       
       // Angle depends on X
       // Centre of the paddle 
       if(ball.getXPosition() == mouseX){ 
          ball.setVelocityX(xVelocityCollision);
       
       // Refactor this part
       // hits the left or right side of the paddle
       }else if(paddleLeftSideHit || paddleRightSideHit){ 
         xVelocityCollision = mouseX/50; 
         ball.setVelocityX(xVelocityCollision);
       }
       
     }
    
  }
  
  
}
