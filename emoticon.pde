int value = 1;
int estado = 1;
public void settings(){
  size(400, 400);
}

void setup(){
  background(220,220,220);
}

void draw(){
  cabeca();
  olho();
  if(estado==1){
    feliz();
    pupilaFeliz();
  }else if(estado==0){
    triste();
    pupilaTriste();
  }
  
}

public void cabeca(){
  fill(255,255,0);
  ellipse(width*.5, height*.5, width*.75, height*.75);
}

public void olho(){

    fill(255);
    ellipse(width*.375, height*.425, width*.15, height*.1);
    ellipse(width*.625, height*.425, width*.15, height*.1);
}

public void pupilaFeliz(){
    fill(0);
    ellipse(width*.375, height*.425, width*.05, height*.05);
    ellipse(width*.625, height*.425, width*.05, height*.05);
    }
    
public void pupilaTriste(){
    fill(0);
    ellipse(width*.375, height*.449, width*.05, height*.05);
    ellipse(width*.625, height*.449, width*.05, height*.05);
}
public void feliz(){
  fill(255, 0, 0);
  arc(width*.5, height*.625, width*.4, height*.25, 0, 3.14);
  line(width*.3, height*.625, width*.7, height*.625);
}

public void triste(){
  fill(255, 0, 0);
  arc(width*.5, height*.680, width*.4, height*.25, -PI, 0);
  line(width*.3, height*.680, width*.7, height*.680);
}

void mouseClicked() {
  if (value%2==0) {
    estado=1;
  } else {
    estado=0;
  }
  value++;
}
