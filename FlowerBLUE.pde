class FlowerBlue {
  float brightnessFlower;
  int x, y;
  int decayTime;
  int l, w;
  float decaySpeed;
  float recoverySpeed;
  Water water;
  
  FlowerBlue (Water water){
    this.water = water;
    brightnessFlower = random(200,255);
    x = int(random(10, width- 10));
    y = int(random(10, height - 10));
    decayTime = int(random(1000, 15000));
    l = 20;
    w = 10;
    decaySpeed = 0.25;
    recoverySpeed = 150;
  }
  
  void display() {
   translate(0,0);
   stroke(0,255,0);
   strokeWeight(2);
   line(x, y,x, y + 50);
   noStroke();
   fill(50,brightnessFlower,brightnessFlower);
   ellipse(x, y -10,l-10,w+10);
   ellipse(x -10, y,20,w);
   ellipse(x + 10, y,20,w);
   fill(#5F4934);
   ellipse(x, y,20,w+10);
  }
  
  void decayFlower(){
    if (brightnessFlower > 100){
      brightnessFlower -= decaySpeed;
    }
  }
  
  void recoverFlower(){
    if (brightnessFlower < 230){
      brightnessFlower += recoverySpeed;
    }
    if (decayTime<millis()){
      decayTime = millis() + int(random(1000, 15000));
    }
  }
  

  
  boolean checkDecay(){
    return(decayTime < millis());    
  }
  
  boolean checkRecovery() {
        //println(dist(water.x, water.y, x, y));

    return (60 >= dist(water.x, water.y, x, y));
  }
  
}
