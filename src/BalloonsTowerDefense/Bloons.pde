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
  Bloons(char type) {
    g1 = loadImage("BaloonLT.png");
    x = 25;
    y = 1;
    w = 50;
    h = 50;
    health = 100;
    speed = 5;
    damage = 10;
    alive = true;
    type = 'b';
    position = new PVector(x, y);
    //speed = 0.5 * diff; // Speed based on difficulty
    this.type = type;
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    g1.resize(50, 50);

    image(g1, x, y);
    //x = int(position.x);
    //y = int(position.y);
    fill(255);
    text(health, x, y);
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


  boolean reachedLeft() {
    if (x<-50) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Darts d) {
    float dis = dist(x, y, d.x, d.y);
    if (dis<40) {//refine the collision detection
      return true;
    } else {
      return false;
    }
  }
}
