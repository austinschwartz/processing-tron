interface Bot {
  Color getColor();
  int makeMove();
  int getX();
  int getY();
  void updatePos(int x, int y);
}