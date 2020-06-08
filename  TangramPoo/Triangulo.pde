class Triangulo extends Figura {

float x1,y1;
float x2,y2;
float x3,y3;

Triangulo(float x1_,float y1_,float x2_,float y2_,float x3_,float y3_,color col_,float rotar_,float x,float y){
  super(col_,rotar_,x,y);
x1= x1_;
y1= y1_;
x2= x2_;
y2=y2_;
x3=x3_;
y3=y3_;
col=col_;

}
void display(){
  pushMatrix();
  super.display();
  pushStyle();
  fill(col);
  triangle(x1,y1,x2,y2,x3,y3);
  popStyle();
  popMatrix();
     }
}
