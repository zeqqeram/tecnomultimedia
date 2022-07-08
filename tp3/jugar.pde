
void jugar() {
  PImage fondo = loadImage ("fondo.png"); //carga imagen de fondo
  image (fondo, 0, 0);

  cielo (); //Llama a función cielo
  player(); //Llama a función player
  ground(); //Llama a función ground

  if (platY == width) {
    platY = 0;
    tam = random (80, 380);
    platX = random (600-tam);
  }

  contador++;
  //como algo simple, voy a evaluar el valor de contador para saber si perdi:
  if (contador>tiempoLimite) { 
    estado = 4;
  }
  if (contador>tiempoLimite-10) {
    PImage bimbo = loadImage ("bimbo.png"); //carga imagen de fondo
    image (bimbo, platX, platY-platH*2);
  }
}
