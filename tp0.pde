//Trabajo Practico 0 por Francisco Pinna Dietrich
//Comision 3 

PImage imagen;
void setup() {
  size (800,400);
  imagen = loadImage("foto.jpg");
}

void draw() {
background (59,155,188);
  strokeWeight (1);
  image(imagen,400, 0);
//cara y pelo
  
  fill(142,10,10);
  ellipse(200,200,310,350);
  fill(240,216,157);
  ellipse (200,220,310,330);
  stroke(98,67,55);
  fill(142,10,10);
 triangle (140,50,240,50,190,140);
  triangle(100,65,160,65,120,150);
  triangle(220,60,300,60,270,150);
  
  strokeWeight(8);
  //cejas 
  line(100,140,160,140);
  line(250,140,310,140);
  strokeWeight(0);
  //ojos
  fill(255,255,255);
   ellipse (130,170,80,40);
   ellipse (270,170,80,40);
   fill (103,56,25);
   ellipse (130,170,40,30);
  ellipse (270,170,40,30);
  fill(0);
  ellipse (130,167,20,15);
  ellipse (270,167,20,15);
  fill (255);
  ellipse(137,160,10,10);
  ellipse(277,160,10,10);
  //boca
  strokeWeight(3);
   line(140,300,250,300);
   line (250,300,280,280);
   //nariz
   line(200, 180, 220, 250); 
   line(220, 250, 190, 250);
   line(190, 250, 190, 245);
   
   
   
   
}
