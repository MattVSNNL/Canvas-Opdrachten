// Load images
PImage bg;
PImage texture;
PImage leaf;

// Load fonts
PFont timerFont;
PFont statusFont;

ParticleSystem particlesLeft;
ParticleSystem particlesRight;
ParticleSystem particlesMiddle;

Text timer;
Text status;

SoundModule music;
SoundModule birds;

void loadEnviorment(){
  // Image
  bg = loadImage("textures/backgroundTexture.png");
  texture = loadImage("textures/woodTexture.png");
  leaf = loadImage("textures/leaf.png");

  // Fonts
  timerFont = createFont("fonts/MoonGet.ttf", 60);
  statusFont = createFont("fonts/MoonGet.ttf", 30);

  // Particles
  particlesLeft = new ParticleSystem(new PVector(50, -30));
  particlesMiddle = new ParticleSystem(new PVector(width / 2, -30));
  particlesRight = new ParticleSystem(new PVector(width - 50, -30));

  particlesLeft.populate(3);
  particlesMiddle.populate(2);
  particlesRight.populate(3);
  
  // Music
  music = new SoundModule(this, "music/nature.wav", 1.00, true);
  birds = new SoundModule(this, "music/birds.wav", 0.75, true);

  timer = new Text("", new PVector(475, 100), timerFont);
  status = new Text("Player 1's turn", new PVector(width / 2 - 125, 100), statusFont);
}

void loadParticles(){
    particlesLeft.addParticle();
    particlesMiddle.addParticle();
    particlesRight.addParticle();

    particlesLeft.run();
    particlesMiddle.run();
    particlesRight.run();
}