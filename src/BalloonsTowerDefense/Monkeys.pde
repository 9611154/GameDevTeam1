// Jack Morrison | 3 Oct 2024
class Monkeys {
  // Member variables
  PImage m1;
  int x,y,w,h;
  float damage;
  char type;
  boolean alive;
  
  // Constructor
  Monkeys() {
    m1 = loadImage("m1jm.png");
    x = width/2;
    y = height/2;
    w = 50;
    h = 50;
    damage = 10;
    alive = true;
    type = 'b';
  }
  // Member Methods
  void display() {
    imageMode(CENTER);
    //g1.resize(50,50);
    image(m1,x,y);
  }
  void move() {
    x = x + 1;
  }
}

