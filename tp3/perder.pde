
void perder() {
  PImage perder = loadImage ("lose.png"); //Imagen de fondo
  image (perder, 0, 0);
  fill(0);
  textAlign (CENTER, CENTER); //Alineación del tecto
  text ("PERDISTE", width/2, height/2); //Texto en pantalla
  textSize(24);
  fill (255);
  text ("inicio", 170, 250);
  text ("creditos", 400, 250);
}
