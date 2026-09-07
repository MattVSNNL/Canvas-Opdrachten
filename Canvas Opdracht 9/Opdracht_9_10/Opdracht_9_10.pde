void setup() {
  size(500, 500);
  tekenBos();
}

void tekenBoom(int x, int y) {
  fill(150, 75, 0);
  rect(x, y + 35, 96, 186);
  fill(31, 255, 96);
  ellipse(x + 50, y, 158, 158);
}

void tekenBos() {
  tekenBoom(20, 100);
  tekenBoom(150, 80);
  tekenBoom(280, 120);
}
