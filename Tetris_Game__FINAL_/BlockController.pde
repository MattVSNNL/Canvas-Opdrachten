int rows = 20;
int collums = 10;
int cellSize = 30;

boolean[]FallingBlocks = new boolean[rows * collums];
boolean[]PermenantBlocks = new boolean[rows * collums];

void GenerateGrid() {
  for (int c = 0; c < collums; c++) {
    for (int r = 0; r < rows; r++) {
        int index = r * collums + c;
        int x = c * cellSize;
        int y = r * cellSize;

        if (PermenantBlocks[index]){
          fill(255, 0, 0);
        }else if (FallingBlocks[index]){
          fill(94, 4, 4);
        }else{
          fill(255);
        }

        stroke(200);
        rect(x, y, cellSize, cellSize);
    }
  }
}

class Block{
  int row;
  int collum;
  color blockColor;

  Block(int r, int c, color bC){
    this.row = r;
    this.collum = c;
    this.blockColor = bC;
  }

  void display(){
    int x = this.collum * cellSize;
    int y = this.row * cellSize;

    fill(blockColor);
    stroke(200);

    rect(x, y, cellSize, cellSize);
  }
}