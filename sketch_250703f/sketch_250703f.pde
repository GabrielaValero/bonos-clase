void setup() {
size(1000,1000);
background(255);
}

void draw() {
dibujarCirculo( width *0.25, height *0.4, 100, 6);
dibujarCirculo( width *0.5, height *0.75, 500, 3);
}
//permite crear bloques de codigo para reutilizarlos varias veces, permite simplifcar el codigo

void dibujarCirculo(float xPos, float yPos, float size, float numero) {
  float grayValue = 255 / 5;
  float steps = size/numero;
  println (steps);
  for(int i = 0; i < numero; i++) {
    ellipse(xPos, yPos, size - 1*steps, size -i*steps);
  }
}
