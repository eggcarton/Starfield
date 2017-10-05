NormalParticle [] name;
void setup()
{
  size (811,617);
  name = new NormalParticle[1000];
    for (int i = 0 ; i < name.length; i++)
    {
      name[i] = new NormalParticle();
    }
}
void draw()
{
  background(0);
  for (int i = 0 ; i < name.length; i++)
    {
      name[i].show();
      name[i].move();
    }
}
class NormalParticle
{
  double nX,nY,nSpd,nAngle;
  int yes;
	NormalParticle()
  {
    nX = width/2;
    nY = height/2;
    nSpd = (Math.random()*5);
    nAngle = (Math.random()*2*PI);
    yes = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
  {
    nX = nX + Math.cos(nAngle) * nSpd;
    nY = nY + Math.sin(nAngle) * nSpd;
    
  }
  void show()
  {
    noStroke();
    fill(yes);
    ellipse((float)nX,(float)nY,5,5);
  }
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}