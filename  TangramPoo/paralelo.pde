class Paralelogramo extends Figura {
PShape parale;
   Paralelogramo(color col_,float rotar_,float x,float y){
    super(col_,rotar_,x,y);
    mirror = 1;
    parale = createShape(QUAD, -150, 50,-50,-50,150,-50,50,50);
    parale.setFill(col);
 }
   void display(){
    pushMatrix();
    super.display();
    scale(1,mirror); 
    shape(parale);
    popMatrix();
 }
}
