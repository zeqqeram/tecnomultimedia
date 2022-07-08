void creditos() {
  PImage credits = loadImage ("creditos.png");
  image (credits, 0, 0);
  fill (255);
  text ("INICIO", 300, 270);
  //string de creditos. Cuando terminen de pasar, se va a Inicio (estado0)
}
