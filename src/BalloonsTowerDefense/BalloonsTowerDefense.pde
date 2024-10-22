// Title
Bloons g1;
int level;
ArrayList<Darts> darts = new ArrayList<Darts>();
ArrayList<Bloons> bloons = new ArrayList<Bloons>();
boolean play;
PImage start1, game1;
Timer t1;


void setup() {
  size(800, 500);
  level = 1;
  g1 = new Bloons();
  play = false;
  start1 = loadImage("StartscreenLT.png") ;
  game1 = loadImage("bloonstdmap.png");

}

void draw() {
  if (play == false) {
    startScreen();
  } else {
    // you are playing the game
    loadImage("bloonstdmap.png");
    image(game1, 0, 0);
    g1.display();
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
