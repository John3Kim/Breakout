/* Bricks.pde 
* Description: This will display the bricks on the window.
* Players need to hit the bricks to make them disappear.
* 
* TODO: Implement collision detection for when the ball hits the sides 
* of the bricks instead of the tops and bottoms
*/

class Bricks{ 
   private float brickHeight = height/30; 
   private float brickWidth = width/10;
   
   private int numBricksHorizontal = 10;
   private int numBricksVertical = 6;
   
   private float[][] xCoordinatesBrick = new float[numBricksVertical][numBricksHorizontal];
   private float[][] yCoordinatesBrick = new float[numBricksVertical][numBricksHorizontal];
   private int[][] brickAppear = new int[numBricksVertical][numBricksHorizontal];
   
   int randomRed = int(random(0,255));
   int randomGreen = int(random(0,255));
   int randomBlue = int(random(0,255));
   
   Bricks(){
   }
   
   // initial instantiation
   void instantiateBricks(){
     /* 
     instantiateBricks() populates the arrays xCoordinatesBrick and yCoordinatesBrick so that 
     they can appear later on with the displayBricks() method.
     */
     
      
      for(int vertical = 0; vertical < numBricksVertical; vertical++){ 
        for(int horizontal = 0; horizontal < numBricksHorizontal; horizontal++){
            xCoordinatesBrick[vertical][horizontal] = horizontal*width/16 + horizontal*21;
            yCoordinatesBrick[vertical][horizontal] = height/10 + vertical*height/25;
            brickAppear[vertical][horizontal] = numBricksVertical - vertical;
        }
      }
   }
   
   void displayBricks(){ 
      
      for(int vertical = 0; vertical < numBricksVertical; vertical++){ 
        
         fill(randomRed,randomGreen,randomBlue); 
        
         for(int horizontal = 0; horizontal < numBricksHorizontal; horizontal++){
           if(brickAppear[vertical][horizontal] > 0){ 
             rect(xCoordinatesBrick[vertical][horizontal],yCoordinatesBrick[vertical][horizontal],brickWidth,brickHeight);
           }
         }
      }
   }
   
   // Make bricks vanish
   void brickCollision(Ball ball){ 
     
     // Horizontal and vertical offsets
     float brickLeftSide = -brickWidth/2; 
     float brickRightSide = brickWidth/2; 
     
     float brickUpperSide = brickHeight/2; 
     float brickLowerSide = -brickHeight/2;
     
     // Collisions
     boolean collisionXHorizontal, collisionYHorizontal;
     
     // Need to check for individual bricks
     for(int vertical = 0; vertical < numBricksVertical; vertical++){ 
        for(int horizontal = 0; horizontal < numBricksHorizontal; horizontal++){
            // For the horizontal collisions
            brickLeftSide += xCoordinatesBrick[vertical][horizontal]; 
            brickRightSide += xCoordinatesBrick[vertical][horizontal]; 
     
            brickUpperSide += yCoordinatesBrick[vertical][horizontal]; 
            brickLowerSide += yCoordinatesBrick[vertical][horizontal];
            
            collisionXHorizontal = ball.getXPosition() >= brickLeftSide && ball.getXPosition() <= brickRightSide; 
            collisionYHorizontal = ball.getYPosition() >= brickLowerSide && ball.getYPosition() <= brickUpperSide;
            
            if(collisionXHorizontal && collisionYHorizontal){ 
         
               if(brickAppear[vertical][horizontal] > 0){ 
                   ball.setVelocityY(-ball.getVelocityY());
                   brickAppear[vertical][horizontal]--;
               }

            }
            
             //Reset offsets
             brickLeftSide = -brickWidth/2; 
             brickRightSide = brickWidth/2; 
           
             brickUpperSide = brickHeight/2; 
             brickLowerSide = -brickHeight/2;
        }
      }
   }
   
}
