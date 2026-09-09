boolean[]Grid = {};

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
