float num = 1;
float steps = width / num;

void setup() {
size(1000,1000);
background(255);
}

void draw() {
dibujarTriangulo(10, 10, 100, 500, 500, 100, 10);

}
void dibujarTriangulo(float x1, float y1, float x2, float y2, float x3, float y3, int num) {
  for(int i = 0; i < num; i++) {
  triangle(x1, y1, x2, y2, x3, y3*steps);
  }
}

  
