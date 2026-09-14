int rows = 3;
int collums = 3;
int cellSize = 100;

boolean[]Blocks = new boolean[rows * collums];

void GenerateGrid() {
  for (int c = 0; c < collums; c++) {
    for (int r = 0; r < rows; r++) {
        int index = r * collums + c;
        int x = c * cellSize;
        int y = r * cellSize;
        color blockColor = color(#428df5);

        Block newBlock = new Block(x, y, blockColor);
        newBlock.display();
    }
  }
}

class Block{
  PVector coords;
  color blockColor;

  Block(int r, int c, color bC){
    this.coords = new PVector(r, c);
    this.blockColor = bC;
  }

  void display(){
    int x = int(this.coords.x);
    int y = int(this.coords.y);

    fill(blockColor);
    stroke(200);
    rect(x, y, cellSize, cellSize);
  }
}
