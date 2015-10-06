Snowflake [] rainstorm;
void setup()
{
  size(400,400);
  fill(0);
 rect(-100,-100,5000,500);
  rainstorm = new Snowflake[130];
  for(int i = 0; i < rainstorm.length; i++){
    rainstorm[i] = new Snowflake();

  }

}
void mouseDragged()
{
 
fill(0,0,50);
stroke(0,0,50);
  if(mouseButton == LEFT){
      
      
      rect(mouseX,mouseY,14,14);
  }
    fill(0);
    stroke(0);
 if(mouseButton == RIGHT){
    
      rect(mouseX,mouseY,25,25);
  }



}

void draw()
{
  for(int i = 0; i < rainstorm.length;i++){
    rainstorm[i].move();
    rainstorm[i].erase();
    rainstorm[i].lookDown();
    rainstorm[i].wrap();
    rainstorm[i].show();
  }
  int rX = 10;
  int rY = 240;
  stroke(1);
  //ground
  fill(30,0,10);
  triangle(0,200,500,400,0,400);
  //House
  fill(10,30,0);
  rect(rX,rY,40,40);
  //windows
  fill(200,100,0);
  rect(rX + 7,rY+10,10,10);
  rect(rX + 24,rY+10,10,10);
  //door
  fill(70,20,0);
  rect(rX + 15,rY+27,9,13);
  //doornob
  fill(0);
  ellipse(rX + 18, rY + 34, 2,2);
  //roof
  fill(10,30,0);
  triangle(rX+1,rY,rX+39,rY,rX+20,rY-20);
  stroke(0);
  
  
}

class Snowflake
{
  int x, y;
  boolean isMoving;

  //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*500+300);
    y = (int)(Math.random()*700-400);
    isMoving = true; //class member variable initializations
  }
  void show()
  {
    if(isMoving == true){
      fill(0,153,153);
      ellipse(x,y,4,4);
    } if(isMoving == false){
      fill(0,153,153);
      ellipse(x,y,4,4);
    }

  }
  void lookDown()
  {
    if(y >= 0 && y <=400 && get(x-15,y+15) == color(0,0,50)){
      x =  (int)(Math.random()*500+300);
      y = (int)(Math.random()*700-400);
    }
    else {
      isMoving = true;
    }
    
  }
  void erase()
  {
    fill(1);
    ellipse(x,y,10,10);
  }
  void move()
  {
     if(isMoving == true){
      y++;
      x = x - 1;
     } else if(isMoving == false){
      y=y;
      x=x;
     }

  }
  void wrap()
  {

    if(y >= 380){
      y = -10;
    }
    if(x <= 0){
      x = (int)(Math.random()*500+300);
      y = -10;
    }
  }
}


