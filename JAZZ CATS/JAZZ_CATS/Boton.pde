class Boton{
  float x;
  float y;
  int t;
  color c;
  boolean playover=false;
  boolean pauseover=false;
  
    
  Boton(float x_, float y_, int t_){
    x = x_;
    y = y_;
    t = t_;
  }
  
  void display(){
    noStroke();
    noFill();
    ellipse(x,y,t,t);
  }
  
  void comportamiento(){
    // si estoy presionando el boton push va a ser verdadero;
    if (mousePressed && dist(x,y,mouseX,mouseY)<t/2){
      pauseover = true;
      playover = false;
    }
    // se estoy sobre el boton sin presionarlo over va a ser verdadero
    else if(dist(x,y,mouseX,mouseY)<t/2){
      pauseover = false;
      playover = true;
    }
    else {
      pauseover = false;
      playover = false;
    }
    // en el caso contrario over y push son falsos
  } 
}

class BotonInstrumento extends Boton{
  BotonInstrumento(float x_, float y_, int t_, color c_){
    super(x_,y_,t_);
  }
  void comportamiento(){
    super.comportamiento();    
    if (super.pauseover);
    }
  }


BotonInstrumento uno;
BotonInstrumento dos;
BotonInstrumento tres;
BotonInstrumento cuatro;
BotonInstrumento cinco;
