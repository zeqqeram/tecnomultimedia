PImage nube1;
PImage nube2;
int cantx=4;
int canty=3;
float modx;
float mody;

void cielo () {
  PImage nube1 = loadImage ("nube1.png");
  PImage nube2 = loadImage ("nube2.png");
  //Usamos ciclo for para agregar nubes como un elemento del fondo
  modx = width/cantx;
  mody = height/canty;
  for (int a=0; a<cantx; a++) {
    for (int b=0; b<canty; b++) {
      image (nube2, a*modx, b*mody, 121, 48);
    }
  }
  for (int c=0; c<cantx; c++) {
    for (int d=0; d<canty; d++) {
      image (nube1, c*modx, d*mody, 121, 48);
    }
  }
}
