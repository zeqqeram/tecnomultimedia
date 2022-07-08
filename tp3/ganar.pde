void ganar() {
  PImage ganar = loadImage ("win.png");
  image (ganar, 0, 0);
  fill(0);
  textAlign (CENTER, CENTER);
  text ("GANASTE!", width/2, height/2);
  //x=100;
  fill (255);
  textSize(24);
  text ("inicio", 170, 250);
  text ("creditos", 400, 250);
}
