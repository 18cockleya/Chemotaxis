Bacteria[] colony;
void setup(){
  size(300,300);
  colony = new Bacteria[100];
  for(int i = 0; i < colony.length; i++){
    colony[i] = new Bacteria();
  }
}

void draw(){
  
  background(180,180,180);
  
  for(int i = 0; i < colony.length; i++){
    colony[i].move();
    colony[i].show();
  }
}

class Bacteria{
  int myX, myY, R, G, B;
  Bacteria(){
    myX = (int)random(0, 300);
    myY = (int)random(0,300);
    R = (int)random(0,255);
    G = (int)random(0,255);
    B = (int)random(0,255);
  }
  
  void show(){
    fill(R,G,B);
    ellipse(myX, myY, 15, 15);
  }
  
  void move(){
    
  if(mouseX > myX && mouseY > myY){
    myX++;
    myY++;
  }
  
  else if(mouseX < myX && mouseY < myY){
    myX--;
    myY--;
  }
  
  else if(mouseX < myX && mouseY > myY){
    myX--;
    myY++;
  }
  
  else if(mouseX > myX && mouseY < myY){
    myX++;
    myY--;
  }
  
  else{
    myX = (int)random(myX-random(10,30),myX+random(10,30));
    myY = (int)random(myY-random(10,30),myY+random(10,30));
  }
}
}
