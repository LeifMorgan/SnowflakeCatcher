void setup()
{
  size(400,400);
  background(0);
  int rX = 25;
  int rY = 225;
  fill(46,20,0);
  triangle(0,200,500,400,0,400);
  fill(64,64,64);
  rect(rX,rY,40,40);
  fill(255,128,0);
  rect(rX + 7,rY+10,10,10);
  rect(rX + 24,rY+10,10,10);
  fill(102,51,0);
  rect(rX + 15,rY+27,9,13);
  fill(0);
  ellipse(rX + 18, rY + 34, 2,2);
  fill(128,128,128);
  triangle(rX+1,rY,rX+39,rY,rX+20,rY-20);
  stroke(0);
}
void draw()
{

  
  
}
void mouseDragged()
{
  fill(51,0,25);
  noStroke();
  rect(mouseX,mouseY,15,15);
}

class Snowflake
{
  //class member variable declarations
  Snowflake()
  {
    //class member variable initializations
  }
  void show()
  {
    //your code here
  }
  void lookDown()
  {
    //your code here
  }
  void erase()
  {
    //your code here
  }
  void move()
  {
    //your code here
  }
  void wrap()
  {
    //your code here
  }
}


