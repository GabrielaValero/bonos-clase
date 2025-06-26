int size= 200;
float radio = diametro / 2;
float circunferencia = diametro * TWO_PI; 

int centroHorizontal;
int centroVertical;

void setup() {
  size (1000,1000);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background (150, 150, 200);
  noStroke();
  
  float d = dist(mouseX, mouseY, centroHorizontal, centroVertical);
  
  if(d< radio) {
    fill(45, 60, 90);
  } else {
    fill (255);
  
  ellipse(CentroHorizontal, centroVertical, diametro, diametro);
}
