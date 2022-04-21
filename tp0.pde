/* Nombre: Ramirez Ezequiel Sebastian
legajo 75664/5
Comisión 3 */

void setup () {
  size (400,400);
  background (200);
}
void draw () {
  //Nombre
  textSize (30);
  fill (0);
  text ("Zeqqe!", 5, 35);
  
  //Pelo
  rectMode (CENTER);
  fill (90, 60, 40);
  ellipse (width/2, 80, 90, 100);
  rect (width/2, 160, 190, 200, 40);
  
  //Cara
  fill (230, 200, 160);
  rect (200, 370, 50, 80); //Cuello
  ellipse (120, height/2, 50, 60); //Oreja 
  ellipse (280, height/2, 50, 60); //Oreja 
  rect (200, 220, 170, 230, 40); //Base
  
  //Nariz
  curve (185,240,190, 250, 210, 250, 250, 240);
  
  //Boca
  pushStyle ();
  strokeWeight (3);
  curve (170, 250, 180, 290, 220, 290, 230, 250 );
  popStyle();
  
  //Lentes
  /*Solo necesito aumentar el lineado de los lentes por lo que utilizo pushStyle()
  y popStyle para que no me modifique las lineas del resto del dibujo*/
  
  pushStyle (); 
  strokeWeight (5);
  fill (255);
  rect (155, 200, 70, 55);
  rect (245, 200, 70, 55);
  line (190, 185, 210, 185);
  popStyle ();
 
  //Remera
  rectMode (CORNER);
  fill (0);
  rect (90, 350, 220, 60, 20 );
  
  pushStyle ();
  noStroke ();
  fill (230, 200, 160);
  triangle (175, 350, 200, 370, 225, 350);
  popStyle();

}
