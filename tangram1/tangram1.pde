//Propiedad intelectual de DavidM y Paola:v
PShape triangulo; 
float at = QUARTER_PI;
int xT = 700;
int yT = 100;
color red = color(225,0,0);

int counter = 0;

PShape triangulo2; 
float at2 = QUARTER_PI;
int xT2 = 950;
int yT2 = 500;
color blue = color(0,0,255);

PShape triangulo3; 
float at3 = QUARTER_PI;
int xT3 = 900;
int yT3 = 300;
color purple = color(128, 0, 128);

PShape triangulo4; 
float at4 = QUARTER_PI;
int xT4 = 950;
int yT4 = 100;
color yellow = color(255, 255, 0);

PShape triangulo5; 
float at5= QUARTER_PI;
int xT5 = 600;
int yT5 = 650;
color pink = color(255, 0, 255);

PShape cuadrado; 
float ac = 0;
int xT6 = 1100;
int yT6 = 85;
color celeste = color(0, 255, 255);

PShape Paralelogramo; 
float ap = 0;
int xT7 = 900;
int yT7 = 650;
color canela= color(235, 184, 102);

PImage img;
void setup(){
  size(1200,750);
   triangulo = createShape(TRIANGLE,-80,-80,170,-80,-80,170);
   triangulo.setFill(red); 
   triangulo2 = createShape(TRIANGLE,-240,-100,260,-100,13.55339,150);
   triangulo2.setFill(blue); 
   triangulo3 = createShape(TRIANGLE,-240,-100,260,-100,13.55339,150);
   triangulo3.setFill(purple); 
   triangulo4 = createShape(TRIANGLE,-125,-50,125,-50,0,75);
   triangulo4.setFill(yellow); 
   triangulo5 = createShape(TRIANGLE,-125,-50,125,-50,0,75);
   triangulo5.setFill(pink);
   cuadrado = createShape(RECT,-85,-85,176.7767,176.7767);
   cuadrado.setFill(celeste);
   cuadrado.setStroke(false);
   Paralelogramo = createShape(QUAD,-25,75,225,75,100,-50,-150,-50);
   Paralelogramo.setFill(canela);
   img = loadImage("youwin.png");
}
void keyReleased() {
  if((keyPressed) && (pixels[(mouseY* 1200)+(mouseX)] == red)){
    if(key=='a'){
    at = at + radians(45);
    delay(100);
    }
  if(key=='s'){
    at = at - radians(45);
    delay(100);
  }
  }
  if((keyPressed) && (pixels[(mouseY* 1200)+(mouseX)] == blue)){
    if(key=='a'){
    at2 = at2 + radians(45);
    delay(20);
    }
  if(key=='s'){
    at2 = at2 - radians(45);
    delay(20);
  }
  }
   if((keyPressed) && (pixels[(mouseY* 1200)+(mouseX)] == purple)){
    if(key=='a'){
    at3 = at3 + radians(45);
    delay(20);
    }
  if(key=='s'){
    at3 = at3 - radians(45);
    delay(20);
  }
  }
   if((keyPressed) && (pixels[(mouseY* 1200)+(mouseX)] == yellow)){
    if(key=='a'){
    at4 = at4 + radians(45);
    delay(100);
    }
  if(key=='s'){
    at4 = at4 - radians(45);
    delay(20);
  }
  }
   if((keyPressed) && (pixels[(mouseY* 1200)+(mouseX)] == pink)){
    if(key=='a'){
    at5 = at5 + radians(45);
    delay(20);
    }
  if(key=='s'){
    at5 = at5 - radians(45);
    delay(20);
  }
  }
    if((keyPressed) && (pixels[(mouseY* 1200)+(mouseX)] == celeste)){
    if(key=='a'){
    ac = ac + radians(45);
    delay(20);
    }
  if(key=='s'){
    ac = ac - radians(45);
    delay(20);
  }
  }
  if((keyPressed) && (pixels[(mouseY* 1200)+(mouseX)] == canela)){
    if(key=='a'){
    ap = ap + radians(45);
    delay(20);
    }
  if(key=='s'){
    ap = ap - radians(45);
    delay(20);
  }
  }
  }
  

void draw() {
  counter=0;
   loadPixels();
   background(255,255,191);
   noStroke();
   fill(255,255,255);
   square(50,100,500);
  Triangulo();
  Triangulo2();
  Triangulo3();
  Triangulo4();
  Triangulo5();
  Cuadrado();
  Paralelogramo();
  verificacion();
 
  }
 
  void Triangulo(){ 
    keyReleased();
  if ((mousePressed) && (pixels[(mouseY* 1200)+(mouseX)] == red)){
    xT = mouseX;
    yT = mouseY;
  }
   push();
   translate(xT,yT);
   rotate(at);
   shape(triangulo);
   pop();
  }
  void Triangulo2(){ 
    keyReleased();
  if ((mousePressed) && (pixels[(mouseY* 1200)+(mouseX)] == blue)){
    xT2 = mouseX;
    yT2 = mouseY;
  }
   push();
   translate(xT2,yT2);
   rotate(at2);
   shape(triangulo2);
   pop();
  }
  void Triangulo3(){ 
    keyReleased();
  if ((mousePressed) && (pixels[(mouseY* 1200)+(mouseX)] == purple)){
    xT3 = mouseX;
    yT3 = mouseY;
  }
   push();
   translate(xT3,yT3);
   rotate(at3);
   shape(triangulo3);
   pop();
  }
   void Triangulo4(){ 
     keyReleased();
  if ((mousePressed) && (pixels[(mouseY* 1200)+(mouseX)] == yellow)){
    xT4 = mouseX;
    yT4 = mouseY;
  }
   push();
   translate(xT4,yT4);
   rotate(at4);
   shape(triangulo4);
   pop();
  }
    void Triangulo5(){ 
      keyReleased();
  if ((mousePressed) && (pixels[(mouseY* 1200)+(mouseX)] == pink)){
    xT5 = mouseX;
    yT5 = mouseY;
  }
   push();
   translate(xT5,yT5);
   rotate(at5);
   shape(triangulo5);
   pop();
  }
  void Cuadrado(){ 
    keyReleased();
  if ((mousePressed) && (pixels[(mouseY* 1200)+(mouseX)] == celeste)){
    xT6 = mouseX;
    yT6 = mouseY;
  }
   push();
   translate(xT6,yT6);
   rotate(ac);
   shape(cuadrado);
   pop();
  }
   void Paralelogramo(){ 
     keyReleased();
  if ((mousePressed) && (pixels[(mouseY* 1200)+(mouseX)] == canela)){
    xT7 = mouseX;
    yT7 = mouseY;
  }
   push();
   translate(xT7,yT7);
   rotate(ap);
   shape(Paralelogramo);
   pop();
  }
  void verificacion(){
    for (int c =0;c<(width*height);c++){  
   if (pixels[c] == -1){
     ++counter;
   }
  }              // counter muestra el numero de pixeles blancos
 if (counter<4000){
   image(img, 350, 100, width/2, height/2);        //cuando es menor de 6000,significa que la figura se completo
 }
  }
  
