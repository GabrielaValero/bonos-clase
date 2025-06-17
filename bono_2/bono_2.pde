//declarar la variable para la posicion en x
int posX;
int posY;
boolean fueraDelCanvas = false;

//corremos una sola vez
void setup() {
  size(1000,1000);
}

void draw(){
  background (18, 115, 105);
  
  posX = posX +5;
  if(posX > width) {
    posX = posX -5;
    println(posX);
    
//alternativa
    fueraDelCanvas= true;
    println(fueraDelCanvas);
}
  
//declarar el valor de la variable
  posX = posX + 10;
  posY = posY + 10;
  
  fill (159, 193, 49);
  noStroke();
  ellipse(posX, posY,50,50);
}
