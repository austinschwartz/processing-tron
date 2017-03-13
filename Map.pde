class Map {
  int cols, rows;
  Cell[][] grid;
  
  Map(int cols, int rows) {
    this.cols = cols;
    this.rows = rows;
    grid = new Cell[cols][rows];
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        grid[i][j] = new Cell(i * 20,j * 20, 20, 20, Color.WHITE);
      }
    }
  }
  
  boolean place(Bot p) {
    Cell cell = grid[p.getX()][p.getY()];
    cell.c = p.getColor();
    return true;
  }
  
  boolean isOutOfBounds(int x, int y) {
    return x < 0 || x >= rows ||
           y < 0 || y >= cols;
  }
  
  boolean isValid(int x, int y) {
    return !isWall(x, y);
  }
  
  boolean isWall(int x, int y) {
    if (isOutOfBounds(x, y))
        return true;
    Cell cell = grid[x][y];
    return cell.c != Color.WHITE;
  }
  
  void draw() {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        grid[i][j].display();
      }
    }
  }
}