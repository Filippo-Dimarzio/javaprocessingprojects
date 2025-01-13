int cx = 250;
int cy = 250;
int r = 100;
int cq = 250;
int ce = 250;
int d = 150;

void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  noStroke();
  fill(random(0,255),random(0,255),random(0,255));
  float t = millis()/150.0f;
  int x = (int)(cx+r*cos(t));
  int y = (int)(cy+r*sin(t));

  ellipse(x,y,50,50);
  float i = millis()/-250.0f;
  int q = (int)(cq+d*cos(i));
  int e = (int)(ce+d*sin(i));
  ellipse(q,e,50,50);
}
