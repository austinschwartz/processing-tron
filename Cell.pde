class Cell {
  float x,y;
  float w,h;
  Color c;

  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH, Color tempC) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    c = tempC;
  }

  void display() {
    stroke(0);
    fill(c.r, c.g, int(random(2, 200)));
    rect(x, y, w, h); 
  }
}