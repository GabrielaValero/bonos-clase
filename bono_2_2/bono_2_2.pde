void setup() {
  size (500,500);
  background (255);
}

void draw() {
  for(int x = 0; x < width / 2: x+= 10) {
    line(x, 0, x, 500);
  }
