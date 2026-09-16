// Imports
import java.util.Map;

HashMap<String, Integer> data = new HashMap<String, Integer>(); // Data Values

// Load images
PImage bg;
PImage texture;
PImage cell;
PImage leaf;
PImage xImage;
PImage circleImage;
PImage backgroundTexture;

// Load fonts
PFont timerFont;
PFont statusFont;

ParticleSystem particlesLeft;
ParticleSystem particlesRight;
ParticleSystem particlesMiddle;

Text status;

SoundModule music;
SoundModule birds;

ButtonController playButton;

void loadEnviorment(){
  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  // Image
  bg = loadImage("textures/backgroundTexture.png");
  leaf = loadImage("textures/leaf.png");
  xImage = loadImage("textures/x.png");
  circleImage = loadImage("textures/circle.png");
  cell = loadImage("textures/woodCell.png");

  // Fonts
  statusFont = createFont("fonts/MoonGet.ttf", 30);

  // Particles
  particlesLeft = new ParticleSystem(new PVector(50, -30));
  particlesMiddle = new ParticleSystem(new PVector(width / 2, -30));
  particlesRight = new ParticleSystem(new PVector(width - 50, -30));

  particlesLeft.populate(3);
  particlesMiddle.populate(2);
  particlesRight.populate(3);
  
  // Music
  music = new SoundModule(this, "music/nature.wav", 1.00, true); // Looping sounds makes it play automatically for some reason
  birds = new SoundModule(this, "music/birds.wav", 0.75, true); // Looping sounds makes it play automatically for some reason

  status = new Text("Press Play", new PVector(width / 2, 100), statusFont);

  playButton = new ButtonController("Play!", new PVector(width / 2, 525), new PVector(200, 100), color(255), color(0));

  // Add all the data for what grid types mean
  data.put("Empty", 0);
  data.put("X", 1);
  data.put("O", 2);
}

void mousePressed(){
  playButton.mousePressed();
}

void loadParticles(){
    particlesLeft.addParticle();
    particlesMiddle.addParticle();
    particlesRight.addParticle();

    particlesLeft.run();
    particlesMiddle.run();
    particlesRight.run();
}