void setup() {
  size(1000, 1000);
  background(0); // fondo negro
  noStroke();
  frameRate(30);
}

void draw() {
  // Generar valores aleatorios
  float x = random(width);
  float y = random(height);
  float tam = random(20, 100);

  // Color aleatorio con opacidad
  fill(random(100, 255), random(100, 255), random(100, 255), 60);

  // Elegir forma aleatoria
  int forma = int(random(3));

  if (forma == 0) {
    ellipse(x, y, tam, tam); // círculo
  } else if (forma == 1) {
    rect(x, y, tam, tam); // cuadrado
  } else if (forma == 2) {
    triangle(x, y, x + tam, y, x + tam / 2, y - tam); // triángulo
  }
}
