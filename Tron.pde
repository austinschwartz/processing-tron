int w = 30, h = 30, cell_size = 20, dir = 2;
int[] dx = {0, 0, 1, -1}, dy = {1, -1, 0, 0};
boolean gameover = false;
Player one, two;

void setup() {
  size(300, 300); 
  one = new Player();
  two = new Player();
  one.add(2, 2);
  two.add(10, 10);
}

void draw_player(Player p) {
  for (int i = 0 ; i < p.size(); i++) {;
    rect(p.x.get(i) * cell_size, 
         p.y.get(i) * cell_size, cell_size, cell_size);
  }
}

void draw() {
  background(255);
  for (int i=0; i < w; i++) 
    line(i * cell_size, 0, i * cell_size, height);
  for(int i = 0; i < h; i++)
    line(0, i * cell_size, width, i * cell_size);
    
  fill(0, 255, 0);
  draw_player(one);
  fill(0, 0, 255);
  draw_player(two);
  if (!gameover) {
    update_board();
  } else {
    restart_game();
  }
}

void update_board() {
  fill(255, 0, 0);
  if (frameCount % 10 == 0) {
    update_player(one);
    update_player(two);
  }
}

boolean out_of_bounds(Player p) {
  return p.x.get(0) < 0  || p.y.get(0) < 0 
      || p.x.get(0) >= w || p.y.get(0) >= h;
}

void update_player(Player p) {
  p.x.add(0, p.x.get(0) + dx[dir]);
  p.y.add(0, p.y.get(0) + dy[dir]);
  if (out_of_bounds(p))
    gameover = true;
  for (int i = 1; i < p.x.size(); i++) 
    if (p.x.get(0) == p.x.get(i) && p.y.get(0) == p.y.get(i))
      gameover=true;
}

void restart_game() {
  //fill(0);
  //textSize(30);
  //textAlign(CENTER);
  //text("GAME OVER. Press space", width / 2, height / 2);
  //if(keyPressed&&key==' ') {
  //  x.clear();
  //  y.clear();
  //  x.add(5);
  //  y.add(5);
  //  gameover = false;
  //}
}