// Cole Tayler | 3 Oct 2024
class Darts {
  // Member Variables
  PImage d1;
  int x, y, w, h;
  float health, speed, damage;
  char type;
  boolean alive;

  // Constructor
  Darts() {
    d1 = loadImage("dart1.png");
    x = 100;
    y = 100;
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
    d1.resize(50, 50);
    image(d1, x, y);
  }
  void move() {
    x = x + 1;
  }
}
