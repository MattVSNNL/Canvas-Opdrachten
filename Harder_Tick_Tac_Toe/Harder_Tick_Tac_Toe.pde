PImage bg;
PImage texture;

// Startup
void setup() {
  // Setup
  size(600, 600);
  bg = loadImage("textures/backgroundTexture.png");
  texture = loadImage("textures/woodTexture.png");
}

// Draw
void draw(){
  background(bg);
  GenerateGrid();
  GenerateText("10");
}