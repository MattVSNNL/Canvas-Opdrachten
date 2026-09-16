// Variables
boolean debounce = false;

// Startup
void setup() {
  // Setup
  size(600, 600);
  loadEnviorment();

  Blocks[num(2)] = getShapie("O");
  Blocks[num(6)] = getShapie("X");

  music.play();
  birds.play();
}

// Draw
void draw() {
  background(bg);
  loadParticles();
  GenerateGrid();

  timer.display();
  status.display();

  debounce = false;
}
