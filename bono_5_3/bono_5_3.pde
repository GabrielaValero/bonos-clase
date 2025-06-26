int x = 0;
int y = 70;

float radio;

void setup() {
  size(1000, 1000);
  background(0);
  frameRate(10);
}

void draw() {
  // número aleatorio que simula una onda
  float numAleatorio = random(0.5, 1);
  radio = numAleatorio * 70; // se ajusta al tamaño de la celda

  // dibuja mientras haya espacio vertical
  if (y < height) {

    // contorno del triángulo
    stroke(100, 200, 255); // azul claro
    strokeWeight(2);

    // color con opacidad
    fill(random(150, 255), random(100, 255), random(150, 255), 100);

    // triángulo orientado hacia abajo desde x, y
    triangle(x, y, x + radio / 2, y + radio, x - radio / 2, y + radio);

    // avanzar horizontalmente
    x = x + 70;

    // cuando llega al borde derecho, reinicia x y baja en y
    if (x > width) {
      x = 0;
      y = y + 70;
    }
  }
}
