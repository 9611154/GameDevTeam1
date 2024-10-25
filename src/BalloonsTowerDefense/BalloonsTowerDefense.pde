// Title
Bloons g1;
Darts d1;
Monkeys c1, m1;
int level;
//ArrayList<Darts> darts = new ArrayList<Darts>();
//ArrayList<Bloons> bloons = new ArrayList<Bloons>();
boolean play;
PImage start1, press, game1, dart1;
Timer t1;
InfoPanel p1;

void setup() {
  size(800, 500);
  level = 1;
  g1 = new Bloons();
  d1 = new Darts();
  play = false;
  start1 = loadImage("start1.png") ;
  game1 = loadImage("newmap1.png");
  dart1 = loadImage("dart2.png");
  m1 = new Monkeys('t');
  c1 = new Monkeys('c');
  p1 = new InfoPanel(10,20,30,40);
}

void draw() {
  if (play == false) {
    startScreen();
  } else {
    background(127);
    // you are playing the game
    imageMode(CORNER);
    image(game1, 0, 0);
    g1.display();
    d1.display();
    c1. display();
    m1. display();
    p1.display();
  }
}

void mousePressed() {
}

void startScreen() {
  image(start1, 0, 0);
  if (mousePressed) {
    play = true;
  }
}

void gameOver() {
}
