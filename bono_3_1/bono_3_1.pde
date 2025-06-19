//inicializar las variables
float[] xPositions;

void setup (){
  size (1000,1000);
  background (0);
  noStroke();
  
  //tener 10 espacios (de 0 a 9)
  //definir el tamaño del arrayy
  xPositions = new float[10]; //[arraySize];
  
  xPositions[0]=50;
  xPositions[1]=50;
  xPositions[2]=50;
  xPositions[3]=50;
  xPositions[4]=50;
  xPositions[5]=50;
  xPositions[6]=50;
  xPositions[7]=50;
  xPositions[8]=50;
  xPositions[9]=50;
  

//alternativa del xPosition x9 es for(int i=0; i< xPositions.lenght; i++ )
//xPositions [i]= 10; //si es un valor aleatorio puede ser =random (0,10)/ (width);
//println(xPositions [i]);
}
void draw() {
  for (int i= 0; i < xPositions.length; i++) {
  ellipse (xPositions [0], 500, 100, 100); 
}
