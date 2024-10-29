//Lincoln Tayler | 3 Oct 2024
class Bloons {
  // Member Variables
  PImage g1;
  int x, y, w, h;
  float health, speed, damage;
  boolean alive;
  char type;

  // Constructor
  Bloons() {
    g1 = loadImage("BaloonLT.png");
    x = 57;
    y = 0;
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
    moveDown(5);
    moveRight(10);

  }
  void moveRight(int count){
    for(int i = 0; i < count; i++){
      x += i; 
    }
    //x = x + int(speed);
  }
  void moveUp(int count){
    for(int i = 0; i < count; i++){
      y -= i; 
    }
  }
  void moveDown(int count){
    for(int i = 0; i < count; i++){
      y += i; 
    }
  }
}
