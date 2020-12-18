class Asteroid extends Floater
{
 private double rotSpeed;
  public Asteroid () {
   corners = 5;
   xCorners = new int[corners];   
   yCorners = new int[corners];
   xCorners[0] = -8;
   yCorners[0] = 0;
   xCorners[1] = -4;
   yCorners[1] = -4;
   xCorners[2] = 4;
   yCorners[2] = -4;
   xCorners[3] = 8;
   yCorners[3] = 0;
   xCorners[4] = 0;
   yCorners[4] = 8;
   myColor = color(59, 232, 245);
   rotSpeed = 1;
   myCenterX = Math.random()*500;  
   myCenterY = Math.random()*500;
   myXspeed = Math.random()*2-1;
   myYspeed = Math.random()*2-1;
   myPointDirection = (int)(Math.random()*360); 
 }
 public void move(){
   super.move();
   turn(rotSpeed);
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
