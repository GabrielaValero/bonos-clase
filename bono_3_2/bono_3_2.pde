int arraySize =3;
float [] xPositions;
float [] yPositions;

void setup() {
  size (1000,1000);
  background (0);
  noStroke ();
  
  xPositions = new float [arraySize];
  yPositions = new float [arraySize];
  
  for (int i= 0; i < xPositions. length; i++) {
    xPositions [i] = random(width);
    println(xPositions [i]);
    
  }
  for (int i = 0; i < yPositions. length; i++) {
    yPositions [i] =random(width);
    println(yPositions[i]);
  }
}
void draw() {
  for (int i=0; i < xPositions. length; i++) {
    ellipse
