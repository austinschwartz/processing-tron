int cols = 15, 
    rows = 25;
boolean gameover = false;
Bot one, two;
Map map;

void setup() {
  size(100, 100);
  surface.setResizable(true);
  surface.setSize(20 * rows, 20 * cols);
  createEntities();
}

void createEntities() {
  map = new Map(rows, cols);
  one = new RandomBot(map, Color.RED, 5, 5);
  two = new OrderedBot(map, Color.BLUE, 15, 15);
}

void printStats(Bot p) {
  print(p.getColor().toString() + " loses\n");
}

void updatePlayer(Bot p) {
  int nd = p.makeMove();
  if (nd == 0) p.updatePos(p.getX(), p.getY() - 1);
  if (nd == 1) p.updatePos(p.getX() + 1, p.getY());
  if (nd == 2) p.updatePos(p.getX(), p.getY() + 1);
  if (nd == 3) p.updatePos(p.getX() - 1, p.getY());
  
  if (map.isValid(p.getX(), p.getY())) {
    map.place(p);
  } else {
    printStats(p);
    createEntities();
  }
}

void draw() {
  background(255);
  map.draw();
  
  if (frameCount % 10 == 0) {
    updatePlayer(one);
    updatePlayer(two);
  }
}