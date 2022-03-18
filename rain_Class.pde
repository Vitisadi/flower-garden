class Rain{
  int x, y, w, l;
  int fallingSpeed;
  float red, green, blue;
  Rain(){
    x = int(random(0,width));
    y = int(random(-numberDrops * 25,0));
    w = 10;
    l = 20;
    fallingSpeed = 7;
    red = 0;
    green = random(200,255);
    blue = random(200,255);
  }
  
  void display(){
    noStroke();
    fill(red,green,blue);
    rect(x,y,w,l,100);
  }
  
  void fall(){
    y += fallingSpeed;
  }
  
  void reset(){
    x = int(random(0,width));
    y = int(random(-numberDrops * 25,0));
    green = random(200,255);
    blue = random(200,255);
  }
}
