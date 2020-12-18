//your variable declarations here
ArrayList <Bullet> shots = new ArrayList <Bullet>();
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
int score = 0;
Spaceship bob = new Spaceship();
Ufo sue = new Ufo();
Ufo david = new Ufo();
Ufo ed = new Ufo();
Star[] starArray = new Star[200];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < starArray.length; i++){
    starArray[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  fill(255, 255, 255);
  textSize(15);
  text("Score: " + score,10,15);
  for (int i = 0; i < starArray.length; i++){
    starArray[i].show();
  }
  for (int i = 0; i < 6; i++){
    theList.add(new Asteroid());
    theList.get(i).show();
    theList.get(i).move();
  for (int e = 0; e < shots.size(); e++){
      float d3 = dist((float)shots.get(e).getX(),(float)shots.get(e).getY(),(float)theList.get(i).getX(),(float)theList.get(i).getY());
      if (d3 < 10){
      theList.remove(i);
      shots.remove(e);
      score--;
      fill(0);
      fill(255, 255, 255);
      textSize(15);
      text("Score: " + score,10,15);
      break;
      }
  }
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)theList.get(i).getX(),(float)theList.get(i).getY());
    if (d < 17){
    theList.remove(i);
    score++;
    fill(255, 255, 255);
    textSize(15);
    text("Score: " + score,10,15);
    }
  }
  for (int i = 0; i < shots.size(); i++){
    shots.get(i).show();
    shots.get(i).move();
    float d = dist((float)shots.get(i).getX(),(float)shots.get(i).getY(),(float)david.getX(),(float)david.getY());
    float d1 = dist((float)shots.get(i).getX(),(float)shots.get(i).getY(),(float)sue.getX(),(float)sue.getY());
    float d2 = dist((float)shots.get(i).getX(),(float)shots.get(i).getY(),(float)ed.getX(),(float)ed.getY());
    if (d < 17){
    shots.remove(i);
    david.setX((int)Math.random()*500);
    david.setY((int)Math.random()*500);
    score++;
    fill(0);
    fill(255, 255, 255);
    textSize(15);
    text("Score: " + score,10,15);
    }
    if (d1 < 17){
    shots.remove(i);
    sue.setX((int)Math.random()*500);
    sue.setY((int)Math.random()*500);
    score++;
    fill(0);
    fill(255, 255, 255);
    textSize(15);
    text("Score: " + score,10,15);
    }
    if (d2 < 17){
    shots.remove(i);
    ed.setX((int)Math.random()*500);
    ed.setY((int)Math.random()*500);
    score++;
    fill(0);
    fill(255, 255, 255);
    textSize(15);
    text("Score: " + score,10,15);
    }
  }
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)david.getX(),(float)david.getY());
    if (d < 25){
    david.setX((int)Math.random()*500);
    david.setY((int)Math.random()*500);
    score--;
    fill(0);
    fill(255, 255, 255);
    textSize(15);
    text("Score: " + score,10,15);
    }
    float d1 = dist((float)bob.getX(),(float)bob.getY(),(float)sue.getX(),(float)sue.getY());
    if (d1 < 25){
    sue.setX((int)Math.random()*500);
    sue.setY((int)Math.random()*500);
    score--;
    fill(0);
    fill(255, 255, 255);
    textSize(15);
    text("Score: " + score,10,15);
    }
    float d3 = dist((float)bob.getX(),(float)bob.getY(),(float)ed.getX(),(float)ed.getY());
    if (d3 < 25){
    ed.setX((int)Math.random()*500);
    ed.setY((int)Math.random()*500);
    score--;
    fill(0);
    fill(255, 255, 255);
    textSize(15);
    text("Score: " + score,10,15);
    }
  bob.show();
  bob.move();
  david.show();
  david.move();
  sue.show();
  sue.move();
  ed.move();
  ed.show();
}
public void keyPressed()
{
  if (key == 'a')
    bob.turn(-5);
    else if (key == 'd')
    bob.turn(5);
    else if (key == 'w')
    bob.accelerate(0.5);
    else if (key == 'e')
      bob.hyperspace();
      else if (key == ' ')
      shots.add(new Bullet(bob));
     }
