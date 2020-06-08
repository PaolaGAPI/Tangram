Prueba juego;
Creador creador;
int state, state2;
int state3 = 0;//este state maneja el como se dibujan las fichas segun la que se seleccione//este state maneja el home de si se quiere jugar en modo jugador o creador
PFont titulo, mono;
int counter = 0;
PImage play1, nivel1, nivel2, nivel3;
;
void setup() {
  size(1500, 820);  
  juego = new Prueba();
  creador = new Creador();
  titulo = loadFont("Skia-Regular_Black-Extended-150.vlw");
  play1 = loadImage("play1.png");
  mono = loadFont("Univers-Light-48.vlw");
  nivel1= loadImage("niveles/Modo_creador4742.jpg");
  nivel2= loadImage("niveles/Modo_creador4167.jpg");
  nivel3= loadImage("niveles/Modo_creador4375.jpg");
}
void draw() {  
  switch(state2) {
  case 1:
    juego();
    break;
  case 2:
    creador();
    break;
  default:
    background(37, 36, 64);
    textFont(titulo);
    textSize(150);
    fill(255);
    for (int x = -1; x < 2; x++) {//delineado del tangram
      text("TANGRAM", 260+x, 280);
      text("TANGRAM", 260, 280+x);
    }
    fill(99, 36, 64);
    text("TANGRAM", 260, 280);
    //botones play1 en modo juego play2 en modo creador
    image(play1, 430, 450, 100, 100);
    image(play1, 930, 450, 100, 100);
    textFont(mono);
    textSize(34);
    fill(255);
    text("Modo Jugador", 370, 600);
    text("Modo Creador", 880, 600);
    if ((mouseX >430)&&(mouseX<530)&&( mouseY>450)&& (mouseY<550 && mousePressed)) {//interaccion para el primer boton que lleva al juego
      state2 = 1;
    }
    if ((mouseX >930)&&(mouseX<1050)&&( mouseY>450)&& (mouseY<550 && mousePressed)) {
      state2 = 2;
    }
  }
}//modo juego
void juego() {
  counter =0 ;
  loadPixels();
  switch(state3) {
    case 1:
     juego.level("NIVEL2", nivel1, play1); 
     juego.imagen();//pinta la fichas
     juego.reconocimiento();//reconoce el color de las fichas para manipularlas
     juego.verificacion(2);
     break;
    case 2:
     juego.level("NIVEL3", nivel2, play1);
     juego.imagen();//pinta la fichas
     juego.reconocimiento();//reconoce el color de las fichas para manipularlas
     juego.verificacion(0);
     break;
  default:
     juego.level("NIVEL1", nivel3, play1);
     juego.imagen();//pinta la fichas
     juego.reconocimiento();//reconoce el color de las fichas para manipularlas
     juego.verificacion(1);
  }
}
//modo creador
void creador() {
  loadPixels();
  background(37, 36, 64); 
  juego.imagen();//pinta las fichas
  juego.reconocimiento();//reconoce el color de estas
  creador.nivelmaker();//toma screenshoot de los frames.
}
