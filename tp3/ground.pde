float tam = random (80, 380); //tam nos está dando un tamaño random en x de las plataformas
float platW = tam; //Ancho de Ground
float platH = 20; //Alto de ground
float platX = random (600-tam); //X de Ground
float platY = 0; //Y de Ground

void ground () {
  PImage ground = loadImage ("ground.png");
  image (ground, platX, platY, platW, platH);
}
