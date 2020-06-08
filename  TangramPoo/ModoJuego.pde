class Prueba {
  PFont mono;
  PImage img;
  Cuadrado cuadrado;
  Paralelogramo paralelogramo;
  Triangulo []triangles = new  Triangulo[5];

  Prueba() {
    mono = loadFont("Skia-Regular_Black-Extended-150.vlw");
    img = loadImage("youwin.png");
    cuadrado = new Cuadrado(color(255, 204, 0), radians(45), 475, 410); 
    paralelogramo = new Paralelogramo(color(115, 204, 0), 0, 300, 597.5);
    triangles[4] = new Triangulo(-200, -100, 200,-100, 0, 100, color(0, 0, 200), 0, 350, 285);           // Triangulo azul grande
    triangles[3] = new Triangulo(-200, -100, 200,-100, 0, 100, color(100, 0, 200), -radians(90), 225, 410);         // Triangulo morado grande      
    triangles[2] = new Triangulo(0, -50, 100, 50, -100, 50, color(228, 30, 43), 0, 350, 472.5); // Triangulo pequeño rojo
    triangles[1] = new Triangulo(0, -50, 100, 50, -100, 50, color(100, 100, 100), -radians(90), 537.5, 285); // Triangulo pequeño gris
    triangles[0] = new Triangulo(-150, 50, 50, -150, 50, 50, color(0, 100, 100), 0, 537.5, 597.5); // Triangulo mediano verde
  }
  void imagen() {
//en este switch la evaluar el color de cada figura se le dara un caso para que no se sobrepongan las fichas entre ellas
    switch(state) {
    case 1: 
      paralelogramo.display();
      triangles[0].display();
      triangles[1].display();
      triangles[2].display();
      triangles[3].display();
      triangles[4].display();
      cuadrado.display();
      break;
    case 2: 
      triangles[0].display();
      triangles[1].display();
      triangles[2].display();
      triangles[3].display();
      triangles[4].display();
      cuadrado.display();
      paralelogramo.display();
      break;
    case 3: 
      triangles[1].display();
      triangles[0].display();
      paralelogramo.display();
      triangles[2].display();
      triangles[3].display();
      cuadrado.display();
      triangles[4].display();
      break;

    case 4: 
      paralelogramo.display();
      triangles[0].display();
      triangles[1].display();
      triangles[2].display();
      triangles[4].display();
      cuadrado.display();
      triangles[3].display();
      break;

    case 5: 
      paralelogramo.display();
      triangles[0].display();
      triangles[1].display();
      triangles[3].display();
      triangles[4].display();
      cuadrado.display();
      triangles[2].display();
      break;

    case 6: 
      paralelogramo.display();
      triangles[0].display();
      triangles[2].display();
      triangles[3].display();
      triangles[4].display();
      cuadrado.display();
      triangles[1].display();
      break;

    case 7: 
      paralelogramo.display();
      triangles[1].display();
      triangles[2].display();
      triangles[3].display();
      triangles[4].display();
      cuadrado.display();
      triangles[0].display();
      break;
    default:
      paralelogramo.display();
      triangles[0].display();
      triangles[1].display();
      triangles[2].display();
      triangles[3].display();
      triangles[4].display();
      cuadrado.display();
    }
  }

  void reconocimiento() {
    //reconocimiento de color de cada fichha para dar el estado que el switch va a utilizar para cada caso
    if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == color(255, 204, 0))) {
      state = 1;
    } else if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == color(115, 204, 0))) {
      state = 2;
    } else if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == color(0, 0, 200))) {
      state = 3;
    } else if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == color(100, 0, 200))) {
      state = 4;
    } else if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == color(228, 30, 43))) {
      state = 5;
    } else if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == color(100, 100, 100))) {
      state = 6;
    } else if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == color(0, 100, 100))) {
      state = 7;
    }
  }
  void level(String niv,PImage nivelx,PImage bottom) {
   image(nivelx,0,0);
    textFont(mono);
    textSize(60);
    text(niv, 200, 120);
    image(bottom, 1370, 700, 100, 100);
    if ((mouseX >1370)&&(mouseX<1470)&&( mouseY>700)&& (mouseY<800 && mousePressed)) {
      state2= 0;
    }   
  }
  // verificacion de pixeles para saber si el juego esta de forma correcta.
  void verificacion(int cases) {
    for (int c =0; c<(width*height); c++) {  
      if (pixels[c] == -1) {
        ++counter;
      }
    }              // counter muestra el numero de pixeles blancos
    if (counter<3900 && millis()>10000) { // **Se esperan los primeros 5 segundos para hacer la verificacion y se evita el error**
    delay(2000);
      state3 = cases;
    
    }
  }
}
