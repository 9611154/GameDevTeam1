//Lincoln Tayler | 3 Oct 2024
class Bloons {
  // Member Variables
  PImage g1;
  int x, y, w, h;
  float health, speed, damage;
  boolean alive;
  char type;
  PVector position;
  int pointIndex = 0; // Which path point the enemy is heading towards

  // Constructor
  Bloons(float diff) {
    g1 = loadImage("BaloonLT.png");
    x = width/2;
    y = height/2;
    w = 50;
    h = 50;
    health = 100;
    speed = 5;
    damage = 10;
    alive = true;
    type = 'b';
    position = new PVector(x, y);
    speed = 0.5 * diff; // Speed based on difficulty
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    g1.resize(50, 50);
    image(g1, x, y);
  }

  void update(Path p) {
    // Get the next point on the path
    PVector target = p.getPoint(pointIndex);

    // Move towards the next point
    PVector direction = PVector.sub(target, position);
    direction.normalize();
    direction.mult(speed);
    position.add(direction);

    // Check if close enough to target point to move to next point
    if (PVector.dist(position, target) < 5) {
      pointIndex++;
    }
  }

  boolean isOffScreen() {
    return position.x > width;
  }

  void move() {
    x = x + 1;
  }
}
