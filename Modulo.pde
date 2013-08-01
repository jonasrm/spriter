
class Modulo {

  int frames;
  PVector eixoRotacao, angulos, posicao, tamanho;
  boolean sobre;
  PImage imagem;

  Modulo() {}
  
  Modulo (int frames, PVector eixoRotacao, PVector angulos, PVector posicao, PVector tamanho/*, PImage imagem*/) {
     this.frames = frames;
     this.eixoRotacao = eixoRotacao;
     this.angulos = angulos;
     this.posicao = posicao;
     this.tamanho = tamanho;
     this.imagem = imagem;
     this.sobre = false;
  } 

  void update() {
    over();
  }
  
  void display() {
    noFill();    

    if (debug == 1) {
      stroke(255,0,0);
      rect(posicao.x, posicao.y, tamanho.x, tamanho.y);
      ellipse(eixoRotacao.x + posicao.x, eixoRotacao.y + posicao.y, 5, 5);
    }

    stroke(0);
    pushMatrix();
    translate(eixoRotacao.x + posicao.x, eixoRotacao.y + posicao.y);
    //rotate(20);
    translate(-(eixoRotacao.x + posicao.x), -(eixoRotacao.y + posicao.y));
    rect(posicao.x, posicao.y, tamanho.x, tamanho.y);
    ellipse(eixoRotacao.x + posicao.x, eixoRotacao.y + posicao.y, 5, 5);
    popMatrix();
  }
  
  void over() {
    if (mouseX >= posicao.x && mouseX <= posicao.x+tamanho.x && mouseY >= posicao.y && mouseY <= posicao.y+tamanho.y) {
      fill(0,255,0,50);
      rect(posicao.x, posicao.y, tamanho.x, tamanho.y);
      noFill();
      println("Pos: " + posicao.x + " - " + posicao.y);
      sobre = true;
    } else {
      sobre = false;
    }
  }
  
}
