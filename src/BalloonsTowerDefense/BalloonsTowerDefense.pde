// Title
Bloons g1;
int level;
ArrayList<Darts> darts = new ArrayList<Darts>();
ArrayList<Bloons> bloons = new ArrayList<Bloons>();
boolean play;
PImage start1, game1,balloon1;

void setup() {
  size(800, 500);
  level = 1;
  g1 = new Bloons();
  play = false;
  start1 = loadImage("StartscreenLT.png") ;
  game1 = loadImage("bloonstdmap.png");
  balloon1 = loadImage("BaloonLT.png");
}

void draw() {
  if (play == false) {
    startScreen();
  } else {
    // you are playing the game
    loadImage("bloonstdmap.png");
    image(game1, 0, 0);
  }
}

void mousePressed() {
}

void startScreen() {
  image(start1, 0, 0);
  if (mousePressed) {
    play = true;
    loadImage("baloonlt.png");
  }
}

void gameOver() {
}
