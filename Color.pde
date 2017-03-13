enum Color {
  RED(255, 0, 0),
  GREEN(0, 255, 0),
  BLUE(0, 0, 255),
  WHITE(255, 255, 255);
  
  int r, g, b;
  Color(tempR, tempG, tempB) {
    this.r = tempR;
    this.g = tempG;
    this.b = tempB;
  }
}