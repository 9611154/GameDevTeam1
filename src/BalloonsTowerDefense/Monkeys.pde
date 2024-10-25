// Jack Morrison | 3 Oct 2024
class Monkeys {
  // Member variables
  PImage m1;
  int x, y, w, h;
  float damage;
  char type;
  boolean alive, on;

  // Constructor
  Monkeys(char type) {
    this.type=type;
    if (type=='c') {
      m1 = loadImage("c1.png");
    } else if (type=='t') {
      m1 = loadImage("m1jm.png");
    }

    x = int(random(400));
    y = int(random(400));
    w = 50;
    h = 50;
    damage = 10;
    alive = true;
    on = false;
  }
  // Member Methods
  void display() {
    imageMode(CENTER);
    //g1.resize(50,50);
    image(m1, x, y);
  }
  void move(int tempx, int tempy) {
    x = tempx;
    y = tempy;
  }
 
  void hover(int tempx, int tempy) {
    if(tempx > x- w/2 && tempx < x+ w/2 && tempy > y- h/2 && tempy < y+ h/2) {
      on = true;
    } else {
      on = false;
    }
  }
}
