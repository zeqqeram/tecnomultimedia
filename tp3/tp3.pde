/*
ALUMNOS: MESTRALET VICTORIA (91492/6) Y RAMIREZ EZEQUIEL (75664/5)
TP#3 - JUEGO INTERACTIVO LIBRE
LOVECAT, NUESTRA PROPUESTA CONSISTE EN ESQUIVAR PLATAFORMAS QUE CAEN, 
PARA AYUDAR A LOS GATITOS A REENCONTRARSE.

Link de video Ezequiel Ramirez: https://youtu.be/wNeHUV9pVlY
*/

float estado = 0;
PFont fuente;
float contador;
int tiempoLimite = 30*30; //30*30 son 35-40 segundos

//Array para los creditos
String [] creditos;
int pasar = 0;
int timing = 80;

//Boton central
float x=200, y=258, w=190, h=40; 
//Botón derecho
float xd=300, yd=243, wd=195, hd=30;
//Botón izquierdo
float xi=105, yi=243, wi=120, hi=30;

void setup () {
  size (600, 400);
  background (255); // Fondo inicial. Se reemplaza por foto presentación
  fuente = createFont ("pixelfont.ttf", 32); //Se declara la fuente...
  textFont(fuente); //...y se la invoca

  comelonW = 45; //Ancho de Comelon
  comelonH = 45; //Alto de Comelon
  comelonX = width/2; //X de Comelon
  comelonY = height-comelonH; //Y de Comelon
}

void draw() {
  if (estado==0) {
    //Start
    inicio(); //Llama a función inicio
  } else if (estado==1) {
    //instrucciones
    instrucciones(); //Llama a función instrucciones
  } else if (estado==2) {
    //Jugando
    jugar(); //Llama a función jugar
    platY+=3; //Hace bajar la plataforma.

    /*if (platX + platW >= gatitoX && // Si la posición en X + el ancho de ground es mayor a la posición en X de gatito
     platX <= gatitoX + gatitoW && //Si la posicíón en X de ground es menor o igual que la posición en X + el ancho del gatito
     platY + platH/2 >= gatitoY && //Si la posición en Y + el alto de ground es mayor a la posición en Y de gatito
     platY <= gatitoY + gatitoH) { //Si la posicíón en Y de ground es menor o igual que la posición en Y + el alto del gatito
     estado=2; //Pasa a estado2 = Pierde o pasa a colision true pero deberia crear una boolean 
     }*/
     //Evaluamos la colision
    if (colision (platX, platY, platW, platH, 
      comelonX, comelonY, comelonW, comelonH)) {
      estado = 3;
    }
  } else if (estado==3) {  
    //Pierde
    perder(); //Llama a función perder
  } else if (estado==4) {
    //Gana
    ganar(); //Llama a función ganar
  } else if (estado==5) {
    //Créditos
    creditos(); //Llama a función créditos
    //Usamos array para pasar el string de creditos completo
    creditos = loadStrings( "data/creditos.txt" );
    fill(0);
    textSize(24);
    textAlign (CENTER, CENTER);
    text(creditos[pasar], 0, 0, width, 2*height/3);
    if (frameCount%timing == 0) {
      pasar++;
      if (pasar>= creditos.length) {
        pasar=0;
      }
    }
  }
}

void mousePressed () {
  if (estado==0) {
    if (mouseX >= x && mouseX<= x+w && mouseY >= y && mouseY<= y+h) 
      estado=1;
  } else if (estado==1) {
    if (mouseX >= x && mouseX<= x+w &&mouseY >= y && mouseY<= y+h)
      estado=2;
  }
  if (estado==3) {
    if (mouseX >= xd && mouseX<= xd+wd && mouseY >= yd && mouseY<= yd+hd) 
    {
      estado=5;
    } else if (mouseX >= xi && mouseX<= xi+wi && mouseY >= yi && mouseY<= yi+hi)
    {
      comelonX=width/2;
      contador=0;
      platX = random (width-90);
      platY = 0;
      estado = 0;
    }
  } else if (estado==4) {
    if (mouseX >= xd && mouseX<= xd+wd && mouseY >= yd && mouseY<= yd+hd) 
    {
      estado=5;
    } else if (mouseX >= xi && mouseX<= xi+wi && mouseY >= yi && mouseY<= yi+hi)
    {
      comelonX=width/2;
      contador=0;
      platX = random (width-90);
      platY = 0;
      estado = 0;
    }
  } else if (estado==5) {
    if (mouseX >= x && mouseX<= x+w && mouseY >= y && mouseY<= y+h) {
      //Créditos
      comelonX = width/2;
      contador=0;
      platX = random (width-90);
      platY = 0;
      estado = 0;
    }
  }
}



void keyPressed () {
  if (key=='a') { //Si presionamos la tecla "a"...
    comelonX-=4; //...el personaje va a la izquierda
  } else if (key=='d') { //Si presionamos la tecla "d"...
    comelonX+=4; //...el personaje va a la derecha
  }
}
