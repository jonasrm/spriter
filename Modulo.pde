
class Modulo {

  int frames;
  PVector eixoRotacao, angulos, posicao, tamanho;
  PImage imagem; 

  Modulo() {}
  
  Modulo (int frames, PVector eixoRotacao, PVector angulos, PVector posicao, PVector tamanho/*, PImage imagem*/) {
     this.frames = frames;
     this.eixoRotacao = eixoRotacao;
     this.angulos = angulos;
     this.posicao = posicao;
     this.tamanho = tamanho;
     this.imagem = imagem;
  } 

  void update() {
    
  }
  
  void display() {
    if (debug == 1) {
      stroke(255,0,0);
      rect(posicao.x, posicao.y, tamanho.x, tamanho.y);
      ellipse(eixoRotacao.x + posicao.x, eixoRotacao.y + posicao.y, 5, 5);
    }

    noFill();    
    stroke(0);
    pushMatrix();
    translate(eixoRotacao.x + posicao.x, eixoRotacao.y + posicao.y);
    //rotate(20);
    translate(-(eixoRotacao.x + posicao.x), -(eixoRotacao.y + posicao.y));
    rect(posicao.x, posicao.y, tamanho.x, tamanho.y);
    ellipse(eixoRotacao.x + posicao.x, eixoRotacao.y + posicao.y, 5, 5);
    popMatrix();
  }
  
  
}
