class Water{
  float x;
  float y;
  int w;
  int l;
  
  Water() {
    x = mouseX;
    y = mouseY;
    w = 100;
    l = 100;
  }
  
  void display(){
    fill(50, 200, 240, 100);
    ellipse(x,y,w,l);
  }
  
  void move(){
    x = mouseX;
    y = mouseY;
  }
  
}
