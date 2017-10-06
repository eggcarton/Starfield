Particle [] name;
void setup()
{
  size (811, 617);
  name = new Particle[1000];
  for (int i = 0; i < name.length; i++)
  {
    name[i] = new NormalParticle();
  }
  name[1] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < name.length; i++)
  {
    name[i].show();
    name[i].move();
  }
}
class NormalParticle implements Particle
{
  double x, y, spd, angle;
  int yes;
  NormalParticle()
  {
    x = width/2;
    y = height/2;
    spd = (Math.random()*10);
    angle = (Math.random()*2*PI);
    yes = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show()
  {
    noStroke();
    fill(yes);
    ellipse((float)x, (float)y, 5, 5);
  }
  public void move()
  {
    x = x + Math.cos(angle) * spd;
    y = y + Math.sin(angle) * spd;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle extends NormalParticle
{
  OddballParticle()
  {
    spd = (int)(Math.random()*PI);
    angle = (Math.random()*spd);
  }
  public void show()
  {
    fill(0, 225, 0);
        ellipse((float)x, (float)y, 50, 50);
  }
  public void move()
  {
    x = x + (Math.random()*5)+3;
    y = y + Math.cos(spd);
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}