class Ufo extends Floater{
  public Ufo(){
   corners = 8;
   xCorners = new int[corners];   
   yCorners = new int[corners];
   xCorners[0] = 8;
   yCorners[0] = -10;
   xCorners[1] = 8;
   yCorners[1] = -6;
   xCorners[2] = 20;
   yCorners[2] = 0;
   xCorners[3] = 8;
   yCorners[3] = 6;
   xCorners[4] = -8;
   yCorners[4] = 6;
   xCorners[5] = -20;
   yCorners[5] = 0;
   xCorners[6] = -8;
   yCorners[6] = -6;
   xCorners[7] = -8;
   yCorners[7] = -10;
   myCenterX = Math.random()*500;  
   myCenterY = Math.random()*500;
   myXspeed = Math.random()*2-1;
   myYspeed = Math.random()*2-1;
   myPointDirection = (int)(Math.random()*360);
   myColor = color(255,0,0);
  }
  public double getX(){
   return myCenterX;
 }
 public double getY(){
   return myCenterY;
 }
 public void setX(int n){
   myCenterX = n;
 }
 public void setY(int n){
   myCenterY = n;
 }
}
