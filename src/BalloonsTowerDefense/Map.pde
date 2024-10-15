// Jack Derum | 3 Oct 2024
class Map {
  // Member Variables
  PImage g1;
  int x, y, w, h;

  // Constructor
  Map () {
    g1 = loadImage ("");
    x = 0;
    y = 0;
    w = 800;
    h = 500;
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    image(g1, x, y);
  }
}
