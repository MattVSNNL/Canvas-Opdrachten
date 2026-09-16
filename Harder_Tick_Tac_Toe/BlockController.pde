int rows = 3;
int collums = 3;
int cellSize = 100;

int[]Blocks = new int[rows * collums];

void GenerateGrid() {
  int startX = (width - collums * cellSize) / 2;
  int startY = (height - rows * cellSize) / 2;
  float textureWidth = (collums * cellSize);
  float textureHeight = (rows * cellSize);
  tint(0, 170);
  image(texture, startX + 5, startY + 5, textureWidth, textureHeight);
  noTint();
  image(texture, startX, startY, textureWidth, textureHeight);
  for (int c = 0; c < collums; c++) {
    int shapie = Blocks[c];
    for (int r = 0; r < rows; r++) {
      //int index = r * collums + c;
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

    if (shapie == getShapie("X")) {
      image(xImage, x, y, cellSize - 25, cellSize - 25);
    } else if (shapie == getShapie("Circle")) {
      image(circleImage, x, y, cellSize - 50, cellSize - 50);
    }
  }
}
