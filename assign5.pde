Ball ball;
Bar bar;
Brick [ ]bricks;

int life = 3;
int numBrick = 50;
//
float ballX,ballY,ballR;
float barX,barY,barL,barT;
//
void setup(){

  size(640, 480);
  background(253,239,195);
  bar = new Bar(100);
  ball = new Ball(bar.x+bar.l/2,30,5);
  bricks = new Brick[50];
  for(int i =0; i<bricks.length ; i++){
    bricks[i] = new Brick((int(i%10))*50+90,(int(i/10))*50+60);
  }
  
}

void draw(){
  background(255);
  noStroke();
  drawLife();
  

  
  ball.display();
  
  

  bar.display();
  bar.move();
  
  for(int i =0; i<bricks.length ; i++){
  bricks[i].display();
  }
  
}
void mouseClicked(){
   if(mouseButton == RIGHT){   
  ball.move();
   }
}
//void BallHitBar(){
//  if (dist( ball.x , ball.y , bar.x ,bar.y ) 
void drawLife() {
  fill(230, 74, 96);
  textAlign(CENTER);
  text("LIFE:", 40, 459);
  textSize(20);
  for(int i=0 ; i < life ; i++ ){
    ellipse( 78 + i*25, 452 , 15 , 15 );
  }
}
