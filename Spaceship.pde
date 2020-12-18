class Spaceship extends Floater  
{   
    public Spaceship(){
  corners = 9;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];   
  yCorners = new int[corners];
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[3] = -14;
  yCorners[3] = 8;
  xCorners[4] = -14;
  yCorners[4] = 4;
  xCorners[5] = -8;
  yCorners[5] = 4;
  xCorners[6] = -8;
  yCorners[6] = -4;
  xCorners[7] = -14;
  yCorners[7] = -4;
  xCorners[8] = -14;
  yCorners[8] = -8;
  myColor = color(107, 119, 140);   
  myCenterX = myCenterY = 250;  
  myXspeed = myYspeed = 0;  
  myPointDirection = (int)(Math.random()*360); 
  }
  public void hyperspace ()
  {
    myCenterX = Math.random() * 490;
    myCenterY = Math.random() * 490;
    myXspeed = myYspeed = 0;
    myPointDirection = Math.random() * 360;
  }
  public double getX(){
   return myCenterX;
 }
 public double getY(){
   return myCenterY;
 }
 public double getXspeed(){
   return myXspeed;
 }
 public double getYspeed(){
   return myYspeed;
 }
 public double getPointDirection(){
   return myPointDirection;
 }
}
