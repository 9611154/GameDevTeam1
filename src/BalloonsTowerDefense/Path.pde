// Path class defines a predefined path for enemies
class Path {
  PVector[] points;

  Path() {
    // Define waypoints for the path
    points = new PVector[21];
    points[0] = new PVector(50, 1); 
    points[1] = new PVector(50, 150); 
    points[2] = new PVector(310, 150); 
    points[3] = new PVector(310, 60); 
    points[4] = new PVector(540, 60); 
    points[5] = new PVector(530, 220); 
    points[6] = new PVector(660, 220);
    points[7] = new PVector(660, 30); 
    points[8] = new PVector(760, 30); 
    points[9] = new PVector(760, 300);  
    points[10] = new PVector(590, 300); 
    points[11] = new PVector(590, 440); 
    points[12] = new PVector(420, 440); 
    points[13] = new PVector(420, 260); 
    points[14] = new PVector(210, 260); 
    points[15] = new PVector(210, 380); 
    points[16] = new PVector(340, 390); 
    points[17] = new PVector(330, 480); 
     points[18] = new PVector(140, 470); 
    points[19] = new PVector(140, 240); 
    points[20] = new PVector(1, 240); 
  }

  void display() {
    stroke(0);
    noFill();
    beginShape();
    for (PVector point : points) {
      vertex(point.x, point.y);
    }
    endShape();
  }

  PVector getPoint(int index) {
    if (index < points.length) {
      return points[index];
    } else {
      return points[points.length - 1];
    }
  }
}
