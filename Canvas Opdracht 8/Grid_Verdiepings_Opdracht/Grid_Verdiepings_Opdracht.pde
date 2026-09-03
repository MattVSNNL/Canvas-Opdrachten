// Ik heb dit gemaakt om een grid generator te maken en later te hergebruiken voor games (bv: tetris)

void setup() {
  size(500, 500);
  background(0, 0, 0);
  GenerateGrid(3, 3, 120);
}

void GenerateGrid(int rows, int collums, int cellSize) {
  for (int c = 0; c < collums; c++) {
    for (int r = 0; r < rows; r++) {
        int x = c * cellSize;
        int y = r * cellSize;
        fill(255);
        stroke(200);
        rect(x, y, cellSize, cellSize);
    }
  }
}
