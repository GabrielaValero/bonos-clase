void setup() {
  size (1000,1000);
  background (255);
}
void draw(){
  //el uso de background ayuda a que el ellipse no funcione como un pincel y se pinte todo el canva
  background(255); 
  fill (0,100,40);
  noStroke();
  //mousex y mousey es la posicion del mouse, cada iteraccion dibuja un circulo enciima
  triangle(mouseX, mouseY, 100, 100,500,550);
}

//ej: para traingulo seria (mousex, mouseY, 100, 100, 500, 550); solo se mueve una esquina es donde esta la variable x y Y
