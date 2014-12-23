class Ball

{
  //properties
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float size;
  //method
  void move(){
    x+=xSpeed;
    y+=ySpeed;
    //detect boundary
    if ( x-size/2 < 0 || x+size/2 > width ){
      xSpeed *= -1;
    }
    if ( y-size/2 < 0 || y+size/2 > height ){
      ySpeed *= -1;
    }
    
    
    
  }
  void display(){
    noStroke();
    //fill(random(225),random(225),random(225));
    fill(88,182,203);
    ellipse( x , y , size , size );
  }
  //constructor
  Ball(float x,float size , float xSpeed ){
    this.x = x;
    y = height-25;

    this.xSpeed = xSpeed;
    ySpeed = 8;
    
    this.size = size;
  }
    
  
  
  
}
