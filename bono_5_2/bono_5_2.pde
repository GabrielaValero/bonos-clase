int x = 0;
int y = 70;

float radio; 

void setup () {
  size (1000,1000);
  background (0);
  noStroke();
  frameRate(10);
}

void draw () {
  // un numero provisional que representa una onda de sonido 
  float numAleatorio= random(0,1);
  radio = (numAleatorio * width/2);
  
  //controlar el dibujo en el eje horizontal
  if(y < height) {
    fill (255, 30);
  ellipse (x, y, radio, radio);
  x = x + 70;
  
  //controlar el dibujo en el eje vertical
  if(x > width) {
    x = 0;
    y = y + 70;
  }
}
}
