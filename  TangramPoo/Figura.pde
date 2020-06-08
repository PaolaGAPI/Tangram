class Figura{
  
color col;
float mirror; 
float rotar;
float x,y;

Figura(color col_,float rotar_,float x,float y){
this.x = x;
this.y = y;
col = col_;
this.rotar = rotar_;
}

//La funcion manipulation designa los valores de las rotaciones y translaciones
void manipulation(){
    if ((mousePressed)&&(pixels[(mouseY* width)+(mouseX)] == col)) {
      x = mouseX;
      y = mouseY;
      
    }
    if ((keyPressed)&&(pixels[(mouseY* width)+(mouseX)] == col)){
     if (key=='a') {
        rotar =rotar + radians(45);
        delay(100);
      }
      if (key=='s') {
        rotar = rotar - radians(45);
        delay(100);
      }
      if (key=='d' ) {                                               
       mirror = mirror * -1;
        delay(200);
      }
    }
    
}
//La funcion display se encarga de ejecutar las rotaciones y translaciones
void display(){
  manipulation();
  translate(x, y);
  rotate(rotar);
    
}
}
