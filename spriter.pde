
//Gerador de Sprites

int debug = 1;
Modulo braco_dir, braco_esq, corpo, perna_dir, perna_esq, cabeca;
boolean bloqueado = false;

void setup() {
  size(500, 600);
  background(255);
  frameRate(10);
  smooth();
  //cria elementos básicos
  braco_dir = new Modulo(1, new PVector(15,15), //eixoRotacao
                            new PVector(1,1), //angulos
                            new PVector(250,100), //posicao
                            new PVector(40,150) //tamanho
                            /*, null*/);
  
  braco_esq = new Modulo(1, new PVector(15,15), //eixoRotacao
                            new PVector(1,1), //angulos
                            new PVector(100,100), //posicao
                            new PVector(40,150) //tamanho
                            /*, null*/);
  
  corpo = new Modulo(1, new PVector(50,90), //eixoRotacao
                        new PVector(0,0), //angulos
                        new PVector(110,60), //posicao
                        new PVector(100,180) //tamanho
                        /*, null*/);
  
  perna_dir = new Modulo(1, new PVector(15,15), //eixoRotacao
                            new PVector(1,1), //angulos
                            new PVector(250,300), //posicao
                            new PVector(40,150) //tamanho
                            /*, null*/);
  
  perna_esq = new Modulo(1, new PVector(15,15), //eixoRotacao
                            new PVector(1,1), //angulos
                            new PVector(100,300), //posicao
                            new PVector(40,150) //tamanho
                            /*, null*/);
  
  cabeca = new Modulo(1, new PVector(40,70), //eixoRotacao
                         new PVector(1,1), //angulos
                         new PVector(120,20), //posicao
                         new PVector(80,80) //tamanho
                         /*, null*/);
  
}


void draw() {
  background(255);
  update();
  braco_esq.display();
  perna_esq.display();
  corpo.display();
  braco_dir.display();
  perna_dir.display();
  cabeca.display();
}

void update() {
  braco_esq.over();
  perna_esq.over();
  corpo.over();
  braco_dir.over();
  perna_dir.over();
  cabeca.over();
}

void mousePressed() {
  bloqueado = true;
}

void mouseReleased() {
  bloqueado = false;
}

