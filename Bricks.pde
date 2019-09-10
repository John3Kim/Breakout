/* Bricks.pde 
* Description: This will display the bricks on the window
* 
* 
*/

class Bricks{ 
   private float brickHeight = height/30; 
   private float brickWidth = width/10;
   private int[] bricksShow = new int[] {1,1,1,1,1,1,1,1,1,1};

   void displayBricks(){ 
      fill(0,100,0);
      for(int i = 0; i < 10; i++){
        rect(i*width/16 + i*21,height/8,brickWidth,brickHeight);
      }
   }

}
