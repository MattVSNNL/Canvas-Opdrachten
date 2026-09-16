int rows = 3;
int collums = 3;
int cellSize = 100;

boolean[]Blocks = new boolean[rows * collums];

void GenerateGrid() {
  int startX = (width - collums * cellSize) / 2;
  int startY = (height - rows * cellSize) / 2;
  float textureWidth = (collums * cellSize);
  float textureHeight = (rows * cellSize);
  for (int c = 0; c < collums; c++) {
    for (int r = 0; r < rows; r++) {
        //int index = r * collums + c;
        int x = startX + c * cellSize;
        int y = startY + r * cellSize;

        Block newBlock = new Block(x, y);
        newBlock.display();
    }
  }
  tint(0, 170);
  image(texture, startX + 5, startY + 5, textureWidth, textureHeight);
  noTint();
  image(texture, startX, startY, textureWidth, textureHeight);
}

class Block{
  PVector coords;

  Block(int r, int c){
    this.coords = new PVector(r, c);
  }

  void display(){
    int x = int(this.coords.x);
    int y = int(this.coords.y);

    noFill();
    //tint(255, 174);
    stroke(0);
    rect(x, y, cellSize, cellSize);
  }
}
