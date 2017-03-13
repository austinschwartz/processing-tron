class OrderedBot implements Bot {
  final int[] ORDER = {1, 2, 3, 0};
  Color c;
  Map map;
  int x, y;
  OrderedBot(Map map, Color c, int x, int y) {
    this.map = map;
    this.c = c;
    updatePos(x, y);
  }
  
  int getX() { return x; }  
  int getY() { return y; }
  Color getColor() { return c; }
  
  void updatePos(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  boolean canMove(int move) {
    if (move == 0 && map.isValid(x, y - 1))
     return true;
    if (move == 1 && map.isValid(x + 1, y))
      return true;
    if (move == 2 && map.isValid(x, y + 1))
      return true;
    if (move == 3 && map.isValid(x - 1, y))
      return true;
    return false;
  }
  
  int makeMove() {
    for (int move : ORDER) {
      if (canMove(move))
        return move;
    }
    return 1;
  }
}