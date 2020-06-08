class Creador extends Prueba {
  color back_col;
  Creador() { 
    super();
    back_col= color(37, 36, 64);
  }
  void nivelmaker() {//con estos if se le puede tomar fot a los frames de la pantalla para creas asi los niveles que se van a utilizar

  if (keyPressed ) {

      if (key=='g') {

        for (int c =0; c<(width*height); c++) {  
          if (pixels[c] != back_col) {
            pixels[c] = -1;
          }
        }
        updatePixels();
        saveFrame("niveles/Modo_creador##.jpg");
        exit();
      }
    }
  }
}
