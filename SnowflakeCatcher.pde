Snowflake [] rainstorm;
void setup()
{
  size(400,400);
  fill(0);
  background(0);
  rainstorm = new Snowflake[30];
  for(int i = 0; i < rainstorm.length; i++){
    rainstorm[i] = new Snowflake();

  }

}
void draw()
{
  for(int i = 0; i < rainstorm.length;i++){
    rainstorm[i].erase();
    rainstorm[i].lookDown();
    rainstorm[i].move();
    rainstorm[i].wrap();
    rainstorm[i].show();
  }
  int rX = 10;
  int rY = 240;
  stroke(1);
  //ground
  fill(46,20,0);
  triangle(0,200,500,400,0,400);
  //House
  fill(64,64,64);
  rect(rX,rY,40,40);
  //windows
  fill(255,128,0);
  rect(rX + 7,rY+10,10,10);
  rect(rX + 24,rY+10,10,10);
  //door
  fill(102,51,0);
  rect(rX + 15,rY+27,9,13);
  //doornob
  fill(0);
  ellipse(rX + 18, rY + 34, 2,2);
  fill(128,128,128);
  //roof
  triangle(rX+1,rY,rX+39,rY,rX+20,rY-20);
  stroke(0);
  
  
}
void mouseDragged()
{
  fill(51,0,25);
  stroke(1);
  rect(mouseX,mouseY,15,15);
}

class Snowflake
{
  int x, y;
  boolean isMoving;

  //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*400);
    y = (int)(Math.random()*400-200);
    isMoving = true; //class member variable initializations
  }
  void show()
  {
    fill(0,153,153);
    ellipse(x,y,4,4);
  }
  void lookDown()
  {
    if(y >= 0 && y <=400 && get(x,y+7) == color(1)){
      isMoving = false;
    } else{
      isMoving = true;
    }
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,14,14);
  }
  void move()
  {
     if(isMoving == true){
      y++;
     }
  }
  void wrap()
  {
    if(y >=380)
      y = 0;
      x = (int)(Math.random()*400);
  }
}


