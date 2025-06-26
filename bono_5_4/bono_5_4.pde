int x = 0;
int y = 70;

float radio; 

void setup () {
  size (1000,1000);
  background (0);
  noStroke();
  frameRate(10);
}

void draw() {
//un numero provisional que representa una onda de sonido
float numAleatorio = random (0, 1);
radio = (numAleatorio * width /2);

fill (255, 30);
Stroke (random (0, 100), random (100, 255), random (200, 255));
ellipse (x, y, radio, radio);
triangle (x, y, radio, radio, y+ (radio/2), y+ (radio/2));
x += 70;
println(x);

//controlar el dibujo en el eje vertical
if (x > width) {
  x = 0;
  y = y + 10;
}

//controlar el dibujo en el eje horizontal
if (y > height) {
  y = 70;
  background (0);
}
} 
