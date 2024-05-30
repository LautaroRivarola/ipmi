int pantallaActual = 0;
PImage[] imagenes = new PImage[3];
String[] textos = {"El planeta de los simios\n es una pelicula de 1968 \n Dirigida por Franklin Schaffner ", "Protagonizada por el Coronel\n George Taylor \n (Charlton Heston)", "Astronauta que aterriza en un planeta \n  dominado por simios inteligentes \n  que esclavizan a los humanos"};

int texto = 600;
int tiempoInicio;
int intervalo = 5000;

void setup() {
  size(640, 480);

  imagenes[0] = loadImage("Simios1.jpg");
  imagenes[1] = loadImage("Simios2.jpg");
  imagenes[2] = loadImage("Simios3.jpg");
  tiempoInicio = millis();
}

void draw() {
  background(255);

  if (millis() - tiempoInicio > intervalo) {
    pantallaActual++;
    texto = height;
    tiempoInicio = millis();
  }

  if (pantallaActual > 3) {
    pantallaActual = 0;
  }


  if (pantallaActual >= 0 && pantallaActual <= 2) {
    image(imagenes[pantallaActual], 0, 0, width, height);
    textAlign(CENTER, CENTER);
    textSize(40);
    text(textos[pantallaActual], width/2, texto);

    if (texto > height/2) {
      texto -= 2;
    }
  } else if (pantallaActual == 3) {

    if (mouseX > 200 && mouseX < 400 && mouseY > 175 && mouseY < 225) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    rect(200, 175, 200, 50);
    fill(0);
    text("Reiniciar", 300, 200);
  }
}

void mousePressed() {

  if (pantallaActual == 3 && mouseX > 200 && mouseX < 400 && mouseY > 175 && mouseY < 225) {
    pantallaActual = 0;
    texto = height;
    tiempoInicio = millis();
  }
}
