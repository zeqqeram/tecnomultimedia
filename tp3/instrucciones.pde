void instrucciones() {
  PImage fondo = loadImage ("fondo.png");
  String [] instrucciones;

  image (fondo, 0, 0);
  cielo (); //Llama a la función cielo
  //usamos un array para ubicar las lineas de texto de las instrucciones de juego
  instrucciones = loadStrings ("data/instrucciones.txt");
  //text (, 50,50);
  fill(255);
  textSize(24);
  text (instrucciones [0], 0, 0, width, height/2);
  push();
  textSize (18);
  fill (0);
  text (instrucciones [1], 0, 25, width, height/2);
  text (instrucciones [2], 0, 45, width, height/2);
  text (instrucciones [3], 0, 65, width, height/2);
  text (instrucciones [4], 0, 85, width, height/2);
  text (instrucciones [5], 0, 105, width, height/2);
  pop();

  text("START", 300, 270);
}
