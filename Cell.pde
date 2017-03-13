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
    stroke(255);
    fill(c.r, c.g, c.b);
    rect(x,y,w,h); 
  }
}