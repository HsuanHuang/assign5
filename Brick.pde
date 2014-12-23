class Brick{
  
  int x;
  int y;
  int size;
  
  void display(){
    noStroke();
    fill(0);
    rect( x , y , size,size);
  }
  
  Brick(int x , int y){
    this.x = x;
    this.y = y;
    size = 35;
  }
  
}
    
