// Title
Bloons g1;
Monkeys c1, m1;
Darts d1;
int level;
//ArrayList<Darts> darts = new ArrayList<Darts>();
//ArrayList<Bloons> bloons = new ArrayList<Bloons>();
boolean play;
PImage start1, game1, dart1;
Timer t1;


void setup() {
  size(800, 500);
  level = 1;
  g1 = new Bloons();
  play = false;
  start1 = loadImage("btdstartscreen.png") ;
  game1 = loadImage("bloonstdmap.png");
  m1 =  new Monkeys('t');
  c1 = new Monkeys('c');
  dart1 = loadImage("dart1.png");
  d1 = new Darts();
}

void draw() {
  if (play == false) {
    startScreen();
  } else {
    // you are playing the game
    loadImage("bloonstdmap.png");
    image(game1, 0, 0);
    g1.display();
    c1.display();
    m1.display();
    d1.display();
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
