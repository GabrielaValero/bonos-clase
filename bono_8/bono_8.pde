//errores semanticos

String a;
int c;
String s;

void setup () {
  a = "hola";
}

//otro error

b = 24;

c = 10 + s; //no se pueden sumar numeros con letras

}

//otro error

int spacing; 

void setup () {
  size (1000,1000);
  background (0);
  
  spacing = 30;
}
void draw () {
  for (int x = spacing x > width; x+= spacing) {
    ellipse (x, 50, 20,20);
    
  }
}

//correccion: 

int spacing;

void setup () {
  size (1000,1000);
  background (0)
  
  spacing =30;
}

void draw () {
  int x = spacing; 
  for (x = spacing; x < width; x+= spacing) { //mientras el valor de x sea mayor a 1000, se va a ejecutar
    ellipse (x, 50, 20, 20);
    println(x);
  }
}
