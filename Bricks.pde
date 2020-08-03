/* Bricks.pde 
* Description: This will display the bricks on the window
* 
* 
*/

class Bricks{ 
   private float brickHeight = height/30; 
   private float brickWidth = width/10;
   //private boolean appearBrick = true; 
   
   private int numBricksHorizontal = 10;
   private float[] xCoordinatesBrick = new float[10];
   private float[] yCoordinatesBrick = new float[10];
   private boolean[] brickAppearRow = new boolean[]{true,true,true,true,true,true,true,true,true,true};


   
   Bricks(){
   }
    // We'll just start with one brick
   void displayBricks(){ 
      fill(0,100,0);
      
      /*
      if(appearBrick){ 
        rect(width/2,height/8,brickWidth,brickHeight);
      }
      */ 
      
      for(int side = 0; side < numBricksHorizontal; side++){
           
           if(brickAppearRow[side]){
             rect(side*width/16 + side*21,height/8,brickWidth,brickHeight);
           }
           
           xCoordinatesBrick[side] = side*width/16 + side*21;
           yCoordinatesBrick[side] = height/8;
      }
       
   }
   
   // Make a brick vanish
   void brickVanish(Ball ball){ 
     
     // Single brick cases
     /*
     float xCoordinateBrick = 480/2; 
     float yCoordinateBrick = 720/8;
     float brickLeftSide = xCoordinateBrick - brickWidth/2;
     float brickRightSide = xCoordinateBrick + brickWidth/2;
     
     float brickUpperSide = yCoordinateBrick + brickHeight/2; 
     float brickLowerSide = yCoordinateBrick - brickHeight/2;
     
     boolean collisionX = ball.getXPosition() >= brickLeftSide && ball.getXPosition() <= brickRightSide; 
     boolean collisionY = ball.getYPosition() >= brickLowerSide && ball.getYPosition() <= brickUpperSide;
     
     //Collision Detection
     
     if(collisionX && collisionY){ 
       ball.setVelocityY(-ball.getVelocityY()); 
       print("Hit the brick!\n");
       appearBrick = false;
     }
     */ 
     float brickLeftSide = -brickWidth/2; 
     float brickRightSide = brickWidth/2; 
     
     float brickUpperSide = brickHeight/2; 
     float brickLowerSide = -brickHeight/2;
     
     boolean collisionX, collisionY;
     
     for(int brick = 0; brick < numBricksHorizontal; brick++){ 
       brickLeftSide += xCoordinatesBrick[brick]; 
       brickRightSide += xCoordinatesBrick[brick]; 
     
       brickUpperSide += yCoordinatesBrick[brick]; 
       brickLowerSide += yCoordinatesBrick[brick];
       
       collisionX = ball.getXPosition() >= brickLeftSide && ball.getXPosition() <= brickRightSide; 
       collisionY = ball.getYPosition() >= brickLowerSide && ball.getYPosition() <= brickUpperSide;
       
       if(collisionX && collisionY){ 
         
         if(brickAppearRow[brick]){ 
           ball.setVelocityY(-ball.getVelocityY());
         }
         
         brickAppearRow[brick] = false;
       }
       
       brickLeftSide = -brickWidth/2; 
       brickRightSide = brickWidth/2; 
     
       brickUpperSide = brickHeight/2; 
       brickLowerSide = -brickHeight/2;
       
     }

     
     
   }
}
