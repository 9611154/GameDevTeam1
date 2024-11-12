// Cole Tayler | 3 Oct 2024
class Darts {
  // Member Variables
  PImage g1;
  int x, y, w, h;
  float health, speed, damage;
  char type;
  boolean alive;

  // Constructor
  Darts(int x,int y) {
    g1 = loadImage("dart2.png");
    this.x=x; 
    this.y=y; 
    w = 50;
    h = 50;
    health = 100;
    speed = 5;
    damage = 10;
    alive = true;
    type = 'b';
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    g1.resize(50, 50);
    image(g1, x, y);
  }
  void move() {
    x = x - int(speed);
  }
  boolean reachedLeft() {
    if (x<-20) {
      return true;
    } else {
      return false;
    }
  }
}
