int diametro= 200;
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
  
  translate (centroHorizontal, centroVertical);
  noFill();
  
  //dibujar el diametro
  stroke(0);
  line(-radio, 0, radio, 0);
  
  //radio
  line(-radio, 0, radio, 0); 
  
  //circulo
  stroke(100);
  ellipse(0,0, diametro, diametro);
  
  println(circunferencia); 
 
}
