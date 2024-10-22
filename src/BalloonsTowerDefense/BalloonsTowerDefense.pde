// Title
Bloons g1;
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
  d1 = new Darts();
  play = false;
  start1 = loadImage("StartscreenLT.png") ;
  game1 = loadImage("map2.png");
  dart1 = loadImage("dart1.png");

}

void draw() {
  if (play == false) {
    startScreen();
  } else {
    // you are playing the game
    loadImage("map2.png");
    image(game1, 0, 0);
    g1.display();
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
