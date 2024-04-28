// Tp1 Lautaro Rivarola
// Comision 1

PImage img;
void setup() {
  size (800,400);
  img = loadImage("Cerdo.jpg")
;}
  void draw() {
    background(75,70,50);
    image(img,0, 0, 400, 400);
    fill(250,180,180);
    ellipse(600,200,175,275);
    ellipse(600,250,75,75);
    ellipse(600,295,40,20);
    fill(0,0,0);
    ellipse(575,250,20,25);
    ellipse(625,250,20,25);
    fill(0,0,0);
    ellipse(550,150,20,20);
    ellipse(650,150,20,20);
    fill(250,180,180);
    triangle(450,50,510,200,545,90);
    triangle(750,50,690,200,655,90);
    fill(250,100,100);
    triangle(480,90,510,200,545,90);
    triangle(720,90,690,200,655,90);
  }
    
