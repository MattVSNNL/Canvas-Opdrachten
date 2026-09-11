// Startup
void setup() {
  // Setup
  size(300, 600);

  PermenantBlocks[194] = true;
  FallingBlocks[44] = true;
  FallingBlocks[54] = true;
}

// Draw
void draw(){
  background(0);
  GenerateGrid();
}