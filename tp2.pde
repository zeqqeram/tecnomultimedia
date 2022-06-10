/*
Ramirez Ezequiel Sebastian
 Legajo 75664/5
 Comisión 3

Pido disculpas pero no he podido realizar el video que debía acompañar el TP 
 */

int cantx=10, canty=8;
float modx, mody;
float relleno=255, borde=0;

void setup () {
  size (400, 400);
}

void draw () {
  modx = (float) width/cantx;
  mody = (float) height/canty;
  for (int a=0; a<cantx; a++) {
    for (int b=0; b<canty; b++) {
      for (int c=0; c<cantx; c++) {
        for (int d=0; d<canty; d++) {
          noStroke ();
          fill (relleno);
          ellipse (c*modx, d*mody, 10, 10);
        }
      }
      fill (borde);
      strokeWeight (5);
      stroke (relleno, 150);
      rect (a*modx, b*mody, modx, mody);
    }
  }
}

void mousePressed () { //Si presionamos el mouse, cambia al color opuesto
  if (relleno==255 && borde==0) {
    relleno=0;
    borde=255;
  } else {
    relleno=255;
    borde=0;
  }
}
