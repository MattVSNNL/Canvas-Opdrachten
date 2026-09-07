void setup() {
  size(500, 500);
  tekenDriehoek(204, 113, 203, 115, 168, 237);
}

void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
  // teken een driehoek m.b.v. de meegegeven data (parameters)
  line(x1, y1, 296, 230);
  line(x2, y2, 168, 238);
  line(x3, y3, 292, 229);
}
