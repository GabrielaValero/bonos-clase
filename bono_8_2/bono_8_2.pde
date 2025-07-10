void setup() {
  size(1000,1000); 
  background (255);
}
void draw () {
  //identificar si la tecla hacia arriba esta siendo presionada
  if (keyPressed == true) {
    
    //inicio de la historia
    if(KeyCode == UP) {
      println ("Evento Inicial");
    }
    //climax
    if(KeyCode == DOWN) {
      println ("Clímax");
    }
    //desenlace
    if (KeyCode == LEFT) {
      println ("desenlace");
    }
  }
}
