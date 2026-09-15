int time = 10;
int lastTimerUpdate = 0;

// Startup
void setup() {
  // Setup
  size(600, 600);
  loadEnviorment();

  music.play();
  birds.play();
}

// Draw
void draw(){
  background(bg);
  loadParticles();

  GenerateGrid();
  if (millis() - lastTimerUpdate >= 1000){
    if (time >= 0){
      time = time - 1;
      timer.update(str(time));
    }
    lastTimerUpdate = millis();
  }
  timer.display();
  status.display();
}