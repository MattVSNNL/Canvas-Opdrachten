// Load images
PImage bg;
PImage texture;
PImage leaf;

// Load fonts
PFont moonGet;

ParticleSystem particlesLeft;
ParticleSystem particlesRight;
ParticleSystem particlesMiddle;

// Startup
void setup() {
  // Setup
  size(600, 600);

  // Image
  bg = loadImage("textures/backgroundTexture.png");
  texture = loadImage("textures/woodTexture.png");
  leaf = loadImage("textures/leaf.png");

  // Fonts
  moonGet = createFont("fonts/MoonGet.ttf", 60);

  // Particles
  particlesLeft = new ParticleSystem(new PVector(50, -30));
  particlesMiddle = new ParticleSystem(new PVector(width / 2, -30));
  particlesRight = new ParticleSystem(new PVector(width - 50, -30));

  particlesLeft.populate(3);
  particlesMiddle.populate(2);
  particlesRight.populate(3);

  // Music
  Sound music = new Sound(this, "music/nature.mp3", 1.00, true);
  music.play();
  Sound birds = new Sound(this, "music/birds.mp3", 0.75, true);
  birds.play();
}

// Draw
void draw(){
  background(bg);

  particlesLeft.addParticle();
  particlesMiddle.addParticle();
  particlesRight.addParticle();

  particlesLeft.run();
  particlesMiddle.run();
  particlesRight.run();

  GenerateGrid();
  GenerateText("10");
}