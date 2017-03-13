interface Bot {
  Color getColor();
  int makeMove();
  int getX();
  int getY();
  boolean isDead();
  void updatePos(int x, int y);
}