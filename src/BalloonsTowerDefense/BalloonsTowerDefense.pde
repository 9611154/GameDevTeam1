// Title
import processing.sound.*;
Bloons g1;

Monkeys c1, m1;
int level, difficulty, welcomCounter;
ArrayList<Darts> darts = new ArrayList<Darts>();
//ArrayList<Bloons> bloons = new ArrayList<Bloons>();
boolean play;
PImage start1, press, game1, dart1;
Timer t1, wTime;
InfoPanel p1;
Path path;
SoundFile bongo;

void setup() {
  size(800, 500);
  level = 1;


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
  wTime = new Timer(5000);
  bongo.loop();
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
    c1. display();
    c1.hover(mouseX, mouseY);
    m1. display();
    m1.hover(mouseX, mouseY);
    for (int i = 0; i < darts.size(); i++) {
      Darts d = darts.get(i);
      d.display();
      d.move();
      if (d.intersect(g1)) {
        g1.position.x = 25;
        g1.position.y = 1/2;
      }
    }
    p1.display();
    if (!bongo.isPlaying()) {
      bongo.loop();
    }
    // bongo.play();
  }
}

void mousePressed() {
  darts.add(new Darts(m1.x, m1.y));
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
