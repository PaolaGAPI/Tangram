class Cuadrado extends Figura {
  PShape cuadra;
 Cuadrado(color col_,float rotar_,float x,float y){
   super(col_,rotar_,x,y);
   rectMode(CENTER);
   cuadra = createShape(RECT, 0, 0, 100*sqrt(2),100*sqrt(2));
   cuadra.setFill(col);
 }
 void display(){
    pushMatrix();
    super.display();
    shape(cuadra);
    popMatrix();
 }
 
}
