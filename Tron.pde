int cols = 60, rows = 60;
boolean gameover = false;
Bot one, two;
Map map;

void setup() {
  size(500,500);
  map = new Map(cols, rows);
  one = new RandomBot(map, Color.RED, 5, 5);
  two = new RandomBot(map, Color.BLUE, 15, 15);
}

void update_player(Bot p) {
  int nd = p.makeMove();
  if (nd == 0) p.updatePos(p.getX(), p.getY() - 1);
  if (nd == 1) p.updatePos(p.getX() + 1, p.getY());
  if (nd == 2) p.updatePos(p.getX(), p.getY() + 1);
  if (nd == 3) p.updatePos(p.getX() - 1, p.getY());
  if (!p.isDead()) {
    map.place(p);
  }
}

void draw() {
  background(255);
  map.draw();
  
  if (frameCount % 10 == 0) {
    update_player(one);
    update_player(two);
  }
}