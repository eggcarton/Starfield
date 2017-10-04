NormalParticle [] name;
void setup()
{
  size (811,617);
  name = new NormalParticle[657];
  //for loop here please
}
void draw()
{
	//your code here
}
class NormalParticle
{
  double nX,nY,nSpd,nAngle; 
	NormalParticle()
  {
    nX = width;
    nY = height;
    nSpd = (Math.random())+11;
    nAngle = (Math.random()*4*PI);
  }
  void move()
  {
    nX = nX + Math.cos(nAngle) * nSpd;
    nY = nY + Math.sin(nAngle) * nSpd;
  }
  void show()
  {
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