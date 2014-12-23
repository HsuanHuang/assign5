class Bar{
  int x;
  int y;
  int l;
  int t;
  
  
  void display(){
    fill(244,179,40);
    rect(x,y,l,t);
  }
  void move(){
    x = mouseX;
  }
  
  Bar(int l ){
    x = mouseX;
    y = height-10;
    t = 10;
    this.l = l;
  }
  
}
