class Player {
  ArrayList<Integer> x;
  ArrayList<Integer> y;
  Player() {
    x = new ArrayList<Integer>();
    y = new ArrayList<Integer>();
  }
  
  void add(int nx, int ny) {
    x.add(nx);
    y.add(ny); 
  }
  
  int size() {
    return x.size();
  }
}