//declarar la variable para la posicion en x
int posX;
int posY;
int speedX = 1;
int speedY =1;

//corremos una sola vez
void setup() {
  size(1000,1000);
}

void draw(){
  background (18, 115, 105);
  
  posX = posX + (+1);
  posX = posX + 1;
  
  posX = posX + (-1);
  posX = posX + 1;
  
  if(posX >=width) {
    speedX = speedX * -1;
    
  }
  
  println(posX);
    
  fill (159, 193, 49);
  noStroke();
  ellipse(posX, 150,50,50);
  
}
