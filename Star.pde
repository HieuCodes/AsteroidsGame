class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  protected float mySize;
  protected int myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  public Star()
  {
    myX = (int)(Math.random()*490);
    myY = (int)(Math.random()*490);
    mySize = (float)(Math.random()*4 + 2);
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize,mySize);
  }
}
