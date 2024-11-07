// Title
import processing.sound.*;
Bloons g1;
Darts d1;
Monkeys c1, m1;
int level, difficulty;
//ArrayList<Darts> darts = new ArrayList<Darts>();
//ArrayList<Bloons> bloons = new ArrayList<Bloons>();
boolean play;
PImage start1, press, game1, dart1;
Timer t1;
InfoPanel p1;
Path path;
SoundFile bongo;

void setup() {
  size(800, 500);
  level = 1;

  d1 = new Darts();
  play = false;
  start1 = loadImage("start1.png") ;
  game1 = loadImage("newmap1.png");
  dart1 = loadImage("dart2.png");
  m1 = new Monkeys('t');
  c1 = new Monkeys('c');
  p1 = new InfoPanel(10, 20, 30, 40);
  difficulty = 2;
  g1 = new Bloons(difficulty);
  path = new Path();
  bongo = new SoundFile(this, "handrum2.wav");
}

void draw() {
  if (play == false) {
    startScreen();
  } else {
    println("mousex" + mouseX + "mousey" + mouseY);
    background(127);
    // you are playing the game
    imageMode(CORNER);
    image(game1, 0, 0);
    //g1.update(path);
    g1.display();
    path.display();
    g1.update(path);
    d1.display();
    c1. display();
    c1.hover(mouseX, mouseY);
    m1. display();
    m1.hover(mouseX, mouseY);
    p1.display();
    bongo.play();
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

void mouseDragged() {
  if (c1.on) {
    c1.move(mouseX, mouseY);
  }
  if (m1.on) {

    m1.move(mouseX, mouseY);
  }
}
