int rows = 3;
int collums = 3;
int cellSize = 100;

int[]Blocks = new int[rows * collums];

void GenerateGrid() {
  int startX = (width - collums * cellSize) / 2;
  int startY = (height - rows * cellSize) / 2;
  // float textureWidth = (collums * cellSize);
  // float textureHeight = (rows * cellSize);

  for (int c = 0; c < collums; c++) {
    for (int r = 0; r < rows; r++) {
      int index = r * collums + c;
      int shapie = Blocks[index];
      int x = startX + c * cellSize;
      int y = startY + r * cellSize;

      Block newBlock = new Block(x, y, shapie);
      newBlock.display();
    }
  }
}

class Block {
  PVector coords;
  int shapie;

  Block(int r, int c, int s) {
    this.coords = new PVector(r, c);
    this.shapie = s;
  }

  void display() {
    int x = int(this.coords.x);
    int y = int(this.coords.y);

    image(cell, x, y, cellSize, cellSize);

    if (shapie == getShapie("X")) {
      image(xImage, x, y, cellSize, cellSize);
    } else if (shapie == getShapie("Circle")) {
      image(circleImage, x, y, cellSize, cellSize);
    }
  }
}
