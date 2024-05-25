/*
 Alumno: Pinna Dietrich Francisco
 Legajo 90949/5
 COM 3
 TP2
 */

//DECLARACION

PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PFont fuenteNueva;
float movimientoX;
float movimientoY;
int pantalla = 0;
int contador = 0;
String variableDeTexto1;
String variableDeTexto2;
String variableDeTexto3;
color colorDeTexto;
color colorDeTexto1;
color colorDeLineaDeBoton;
color colorDeBoton;
boolean botonOk;
int posicionXBoton;
int posicionYBoton;
int tamanioEnXBoton;
int tamanioEnYBoton;

//ASIGNACION

void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
  textSize(16);
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  fuenteNueva = loadFont("YuGothicUI-Semibold-16.vlw");
  textFont (fuenteNueva);
  movimientoX = 0;
  movimientoY = (movimientoY + 1) % height;
  variableDeTexto1 = "ARTE TECNOLOGICO DEFINICION \nLas nuevas tecnologías se han incorporado en el Arte \n para crear nuevas formas de expresión de expresión,\n de transmitir conceptos,ideas,  emociones y plasmar nuestra realidad";
  variableDeTexto2 = "EJEMPLO:\n Pintura terapéutica hecho por 'Evru'";
  variableDeTexto3 = "Evru empezó a aplicar la tecnología en los años 70s \n En el año 2000 presentó Tecura en el Macba \nTecura es una herramienta para crear obras pictóricas digitales de manera intuitiva\nEl programa, de descarga gratuita,va por su cuarta actualización.";
  posicionXBoton = 280;
  posicionYBoton = 220;
  tamanioEnXBoton = 80;
  tamanioEnYBoton = 30;
  colorDeTexto = 255;
  colorDeTexto1 = 255;
  botonOk = false;
}

//UTILIZACION Y/O MODIFICACION

void draw() {
  switch (pantalla) {
  case 0:
    image(imagen1, 0, 0);
    contador++;
    println("pantalla 0 ", contador);
    if (contador >= 1000) {
      contador = 0;
      pantalla = 1;
    }
    fill(colorDeTexto1, contador);
    text(variableDeTexto1, movimientoX*1.3, width/5, height/2);
    movimientoX += 0.8;
    if (movimientoX >= width ) {
      movimientoX = 0;
      contador = 0;
      pantalla = 1;
    }
    break;
  case 1:
    image(imagen2, 0, 0);
    contador++;
    println("pantalla 1 ", contador);
    if (contador >= 1000) {
      contador = 0;
      pantalla = 2;
    }
    fill(colorDeTexto1, contador);
    text( variableDeTexto2, height/1.5, movimientoY);
    movimientoY += 0.5;
    if (movimientoY > height ) {
      movimientoY = 1;
      contador = 0;
      pantalla = 2;
    }
    break;
  case 2:
    image(imagen3, 0, 0);
    contador++;
    println("pantalla 2 ", contador);
    if (contador >= 1000) {
      contador = 0;
      pantalla = 0;
    }
    fill(colorDeTexto1, contador);
    text(variableDeTexto3, movimientoX, movimientoY);
    movimientoX = (movimientoX +0.8) % width;
    movimientoY = (movimientoY +0.8) % height;
    if (contador >= 600) {
      contador = 0;
      pantalla = 3;
    }
    break;
  case 3:
    image (imagen4, 0, 0);
    contador ++;
    println ("pantalla 3 ", contador);
    stroke(colorDeLineaDeBoton);
    fill(colorDeBoton);
    rect(posicionXBoton, posicionYBoton, tamanioEnXBoton, tamanioEnYBoton);
    fill(colorDeTexto1);
    text("Reiniciar", posicionXBoton + tamanioEnXBoton/2, posicionYBoton + tamanioEnYBoton / 2);
  }
}
void mouseMoved() {
  if (mouseX > posicionXBoton && mouseX < posicionXBoton + tamanioEnXBoton
    && mouseY > posicionYBoton && mouseY < posicionYBoton + tamanioEnYBoton) {
    colorDeLineaDeBoton = color(45, 70, 243);
    colorDeBoton = color(45, 70, 243);
    colorDeTexto = color(0, 255, 255);
    botonOk = true;
  } else {
    colorDeLineaDeBoton  = 255;
    colorDeBoton = 169;
    colorDeTexto = 200;
    botonOk = false;
  }
}
void mouseClicked() {
  if (botonOk == true) {
    movimientoX= 0;
    movimientoY = 0;
    contador = 0;
    pantalla = 0;
  }
}
