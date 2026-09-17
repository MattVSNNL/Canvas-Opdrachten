int rows = 3;
int collums = 3;
int cellSize = 100;

int[]Blocks = new int[rows * collums];

void ResetBlocks(){
  Blocks = new int[rows * collums];
}

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

      Block newBlock = new Block(x, y, shapie, index);
      newBlock.display();

      if (mousePressed){
        newBlock.pressed();
      }

    }
  }
}

class Block {
  PVector coords;
  int shapie;
  int index;

  Block(int r, int c, int s, int i) {
    this.coords = new PVector(r, c);
    this.shapie = s;
    this.index = i;
  }

  void display() {
    int x = int(this.coords.x);
    int y = int(this.coords.y);

    image(cell, x, y, cellSize, cellSize);

    if (shapie == getShapie("X")) {
      image(xImage, x, y, cellSize, cellSize);
    } else if (shapie == getShapie("O")) {
      image(circleImage, x, y, cellSize, cellSize);
    }
  }

  void pressed(){
    if (mouseX >= coords.x && mouseX <= coords.x + cellSize && mouseY >= coords.y && mouseY <= coords.y + cellSize) {
      if (clickedDebounce){
        return;
      }

      if (!gameStarted){
        return;
      }

      if (Blocks[index] != 0){
        return;
      }
      clickSfx.play();
      if (currentPlayersTurn == 1){
        Blocks[index] = getShapie(player1Shapie);
      }else{
        Blocks[index] = getShapie(player2Shapie);
      }

      clickedDebounce = true;
    }
  }
}
