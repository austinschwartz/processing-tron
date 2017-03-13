class Map {
  int rows, cols;
  Cell[][] grid;
  
  Map(int rows, int cols) {
    this.rows = rows;
    this.cols = cols;
    grid = new Cell[rows][cols];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        grid[i][j] = new Cell(i * 20, j * 20, 20, 20, Color.WHITE);
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
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        grid[i][j].display();
      }
    }
  }
}