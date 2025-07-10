void setup() {
  size(1000, 600);
  background(255);
}

void draw() {
  dibujarCirculo(width * 0.1, height * 0.5, 10, 30);
  dibujarCirculo(width * 0.1, height * 0.3, 20, 20);
  dibujarCirculo(width * 0.1, height * 0.7, 5, 40);
  
}

void dibujarCirculo(float xPos, float yPos, float tamInicial, float cantidad) {
  float incremento = 20; 
  for (int i = 0; i < cantidad; i++) {
    float tam = tamInicial + i; 
    fill(100 + i * 3, 150, 255 - i * 5, 150); 
    ellipse(xPos + i * incremento, yPos, tam, tam);
  }
}
