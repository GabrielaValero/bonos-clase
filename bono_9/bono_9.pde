Gato miGato;
Perro miPerro;

void setup() {
  size(1000, 1000);
  //     color          posX posY velocidad
  miGato = new Gato(color(255, 100, 50), 50, height / 2, 1);
  miPerro = new Perro(color(100, 150, 255), 500, height / 2, 1);
}

void draw() {
  background(255);

  miGato.display();
  miGato.correr();
  miPerro.display();
  miPerro.correr();

  miGato.maullar();
  miPerro.ladrar();
}

// EVENTOS

void keyPressed() {
  // Mover al gato con las flechas
  if (keyCode == LEFT) {
    miGato.posX -= 10;
  }
  if (keyCode == RIGHT) {
    miGato.posX += 10;
  }
  if (keyCode == UP) {
    miGato.posY -= 10;
  }
  if (keyCode == DOWN) {
    miGato.posY += 10;
  }

  // Barra espaciadora: cambia color del gato
  if (key == ' ') {
    miGato.c = color(random(255), random(255), random(255));
  }
}

void mousePressed() {
  println("Click, El perro ladra más fuerte.");
}

void mouseMoved() {
  // El perro sigue al mouse
  miPerro.posX = mouseX;
  miPerro.posY = mouseY;
}

// CLASE PADRE
class Mamifero {
  color c;
  float posX;
  float posY;
  float velocidad;

  void display() {
    fill(c);
    noStroke();
    rect(posX, posY, 100, 100);
  }

  void correr() {
    posX = posX + velocidad;
    if (posX >= width || posX <= 0) {
      velocidad *= -1;
    }
  }
}

// CLASES HIJO
class Gato extends Mamifero {
  Gato(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }

  void maullar() {
    println("El gato está maullando");
  }
}

class Perro extends Mamifero {
  Perro(color tempC, float tempPosX, float tempPosY, float tempVelocidad) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    velocidad = tempVelocidad;
  }

  void ladrar() {
    println("El perro está ladrando");
  }
}
