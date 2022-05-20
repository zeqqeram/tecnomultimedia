/*
Nombre: Ramirez Ezequiel Sebastian
 Legajo: 75664/5
 Comisión: #3
 
 TP1 - Animando con código
 */



int contador = 0; //
int estado = 0; //
float pos, random;
PImage titulo, cara, pasa, tapa, lados, end; 


void setup () {
  size (600, 600);
  titulo = loadImage ("titulo.png");
  cara = loadImage ("cara.png");
  pasa = loadImage ("pasa.png");
  lados = loadImage ("lados.png");
  end = loadImage ("end.jpg");
}

void draw () {
  background (200, 149, 15);
  if (estado == 0) {
    //Ver créditos
    fill (255);
    textAlign (CENTER, CENTER);
    textSize (20);
    text ("Ver creditos", width/2, 300);
    image (titulo, 0, 20, 600, 205);
    image (cara, 30, 280, 500, 667);
  } else if (estado == 1) {
    contador++;
    background (200, 149, 15);
    pos = map (contador, 450, 1550, 600, -500);
    image (lados, -20, pos, 417/2, 500/2);
    image (lados, 430, pos, 417/2, 500/2);
    if (contador < 250) {
      background (200, 149, 15);
      pos = map (contador, 0, 250, 600, -500);
      image (pasa, pos, 150, 400, 300);
    } else if (contador > 250 && contador < 450) {
      background (200, 149, 15);
      textAlign (CENTER, CENTER);
      textSize (50);
      text ("Director\nHayao Miyazaki", width/2, 200);
      textSize (20);
      text ("Basado en la historia de \nHayao Miyazaki", width/2, 400);
    } else if (contador > 450 && contador < 750) {
      //principales
      textSize (20);
      pos = map (contador, 450, 750, 600, -300);
      text ("Producción\n\nIsao Takahata\nToshio Suzuki\nToru Hara\n\nGuion\n\nHayao Miyazaki", width/2, pos);
    } else if (contador > 750 && contador < 1050) {
      //Secundario
      textSize (20);
      pos = map (contador, 750, 1050, 600, -300);
      text ("Música\n\nJoe Hisaishi\n\nFotografía\n\nHisao Shirai\n\nMontaje\n\nTakeshi Seyama", width/2, pos);
    } else if (contador > 1050 && contador < 1350) {
      //Música
      textSize (20);
      pos = map (contador, 1050, 1350, 600, -300);
      text ("Actores de voz\n\nNoriko Hidaka\nHitoshi Takagi\nChika Sakamoto\nSumi Shimamoto\nNaoki Tatsuta\nTanie Kitabayashi\nShigesato Itoi\nShigeru Chiba\nIkue Ōtani \nHayao Miyazaki", width/2, pos);
    } else if (contador > 1350 && contador < 1650) {
      //productora
      background (255);
      image (end, 0, 100, 588, 512);
    } else if (contador > 1650) {
      estado = 0;
    }
  }
}


void mouseClicked () {
  if (estado == 0) {
    estado = 1;
    contador = 0;
  }
}
