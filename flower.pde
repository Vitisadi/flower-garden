int numberTotalFlowers = 100;
int numberDrops = 25;
int lastRainCall = millis();

Rain [] drops;
Water W1;

FlowerRed [] redFlowers;
FlowerBlue [] blueFlowers;
FlowerYellow [] yellowFlowers;
FlowerGreen [] greenFlowers;


void setup(){
  size(800,600);
  
  redFlowers = new FlowerRed [numberTotalFlowers/4];
  blueFlowers = new FlowerBlue [numberTotalFlowers/4];
  yellowFlowers = new FlowerYellow [numberTotalFlowers/4];
  greenFlowers = new FlowerGreen [numberTotalFlowers/4];

  W1 = new Water();
  
  for(int i = 0; i < redFlowers.length; i++){
    redFlowers[i] = new FlowerRed(W1);
  }
  for(int i = 0; i < blueFlowers.length; i++){
    blueFlowers[i] = new FlowerBlue(W1);
  }
  for(int i = 0; i < yellowFlowers.length; i++){
    yellowFlowers[i] = new FlowerYellow(W1);
  }
  for(int i = 0; i < greenFlowers.length; i++){
    greenFlowers[i] = new FlowerGreen(W1);
  }
  drops = new Rain [numberDrops];
  for(int i = 0; i < drops.length; i++){
    drops[i] = new Rain();
  }
}

void draw (){
  background(30, 90, 30);
  int r = 0;
  while(r < redFlowers.length){
    if (redFlowers[r].checkDecay()) {
      redFlowers[r].decayFlower();
    }
    if (redFlowers[r].checkRecovery()){
      redFlowers[r].recoverFlower();
    }
    redFlowers[r].display();
    r++;    
  }
  int b = 0;
  while(b < blueFlowers.length){
    if (blueFlowers[b].checkDecay()) {
      blueFlowers[b].decayFlower();
    }
    if (blueFlowers[b].checkRecovery()){
      blueFlowers[b].recoverFlower();
    }
    blueFlowers[b].display();
    b++;    
  }
  int ye = 0;
  while(ye < yellowFlowers.length){
    if (yellowFlowers[ye].checkDecay()) {
      yellowFlowers[ye].decayFlower();
    }
    if (yellowFlowers[ye].checkRecovery()){
      yellowFlowers[ye].recoverFlower();
    }
    yellowFlowers[ye].display();
    ye++;    
  }
  int g = 0;
  while(g < greenFlowers.length){
    if (greenFlowers[g].checkDecay()) {
      greenFlowers[g].decayFlower();
    }
    if (greenFlowers[g].checkRecovery()){
      greenFlowers[g].recoverFlower();
    }
    greenFlowers[g].display();
    g++;    
  }
  
  W1.display();
  W1.move();
  for(int i = 0; i < drops.length; i++){
    drops[i].display();
    drops[i].fall();
  }
}

void mousePressed() {
  if(lastRainCall + 3000 < millis()){
    for(int i = 0; i < drops.length; i++){
      drops[i].reset();
    }
    for(int i = 0; i < redFlowers.length; i++){
      redFlowers[i].recoverFlower();
    }
    for(int i = 0; i < blueFlowers.length; i++){
      blueFlowers[i].recoverFlower();
    }
    for(int i = 0; i < yellowFlowers.length; i++){
      yellowFlowers[i].recoverFlower();
    }
    for(int i = 0; i < greenFlowers.length; i++){
      greenFlowers[i].recoverFlower();
    }
    lastRainCall = millis();
  }

}
