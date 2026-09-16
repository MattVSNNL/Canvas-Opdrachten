// Imports
import java.util.Map;

HashMap<String, Integer> data = new HashMap<String, Integer>(); // Data Values

// Variables
boolean debounce = false;

// Startup
void setup() {
  // Setup
  size(600, 600);
  loadEnviorment();

  // Add all the data for what grid types mean
  data.put("Empty", 0);
  data.put("X", 1);
  data.put("Circle", 2);

  Blocks[num(4)] = getShapie("Circle");
  Blocks[num(9)] = getShapie("X");

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
