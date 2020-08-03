/* Bricks.pde 
* Description: This will display the bricks on the window
* 
* 
*/

class Bricks{ 
   private float brickHeight = height/30; 
   private float brickWidth = width/10;
   private boolean appearBrick = true;
   //private int numBricksHorizontal = 10;
   //private float[] xCoordinatesBrick = new float[10];
   //private float[] yCoordinatesBrick = new float[10];
   
   Bricks(){
   }
    // We'll just start with one brick
   void displayBricks(){ 
      fill(0,100,0);
      
      if(appearBrick){ 
        rect(width/2,height/8,brickWidth,brickHeight);
      }

      /*
      for(int side = 0; side < numBricksHorizontal; side++){
           rect(side*width/16 + side*21,height/8,brickWidth,brickHeight);
           xCoordinatesBricks[side] = side*width/16 + side*21;
           yCoordinatesBricks[side] = height/8;
      }
      */
   }
   
   // Make a brick vanish
   void brickVanish(Ball ball){ 
     
     float xCoordinateBrick = 480/2; 
     float yCoordinateBrick = 720/8;
     float brickLeftSide = xCoordinateBrick - brickWidth/2;
     float brickRightSide = xCoordinateBrick + brickWidth/2;
     
     float brickUpperSide = yCoordinateBrick - brickHeight/2; 
     float brickLowerSide = yCoordinateBrick + brickHeight/2;
     
     boolean collisionX = ball.getXPosition() >= brickLeftSide && ball.getXPosition() <= brickRightSide; 
     boolean collisionY = ball.getYPosition() >= brickLowerSide && ball.getYPosition() <= brickUpperSide;
     
     //Collision Detection
     
     if(collisionX && collisionY){ 
       ball.setVelocityY(-ball.getVelocityY()); 
       print("Hit the brick!\n");
       appearBrick = false;
     }
     
     /*
     Things to consider: 
     - How to connect the visuals with the collision 
         -> Get the coordinates of all the midpoints of the bricks
     - How to make the brick vanish after x amounts of hits
     */
   }
}
