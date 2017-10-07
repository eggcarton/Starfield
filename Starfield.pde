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
  name[0] = new JumboParticle();
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
  double nX, nY, nSpd, nAngle;
  int nYes;
  NormalParticle()
  {
    nX = width/2;
    nY = height/2;
    nSpd = (Math.random()*10);
    nAngle = (Math.random()*2*PI);
    nYes = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show()
  {
    noStroke();
    fill(nYes);
    ellipse((float)nX, (float)nY, 5, 5);
  }
  public void move()
  {
    nX = nX + Math.cos(nAngle) * nSpd;
    nY = nY + Math.sin(nAngle) * nSpd;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double oX, oY, oSpd, oAngle;
  int oYes;
  OddballParticle()
  {
    oX = width/2;
    oY = height/2;
    oSpd = (Math.random()*10);
    oAngle = (Math.random()*PI);
  }
  public void show()
  {
    noStroke();
    fill(0, 225, 0);
    ellipse((float)oX, (float)oY, 50, 50);
  }
  public void move()
  {
    oX = oX + (Math.random()*10)-5;
    oY = oY + (Math.random()*10)-5;
  }
}
class JumboParticle extends NormalParticle
{
 void show()
  {
    fill (69, 135, 214);
    noStroke();
    ellipse((float)nX, (float)nY, 50, 50);
  }
}