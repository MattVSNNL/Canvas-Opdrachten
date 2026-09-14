class Particle {
  PVector position;

  float fallSpeed;
  float swayOffset;
  float swaySpeed;
  float swayAmount;
  float leafSize;

  Particle(PVector start, boolean randomHeight) {
    position = start.copy();

    // Random horizontal starting position
    position.x += random(-35, 35);

    // When starting the game, distribute leaves over the whole screen
    if (randomHeight) {
      position.y = random(-30, height);
    }

    // Every leaf behaves slightly differently
    fallSpeed = random(0.20, 0.45);

    swayOffset = random(TWO_PI);
    swaySpeed = random(0.01, 0.035);
    swayAmount = random(0.15, 0.5);

    leafSize = random(28, 38);
  }

  void run() {
    update();
    display();
  }

  void update() {
    // Random-looking gentle sway
    position.x += sin(frameCount * swaySpeed + swayOffset) * swayAmount;

    // Slowly fall
    position.y += fallSpeed;
  }

  void display() {
    image(
      leaf,
      position.x,
      position.y,
      leafSize,
      leafSize
    );
  }

  boolean isDead() {
    return position.y > height + 40;
  }
}


class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  int spawnTimer;
  int nextSpawn;

  ParticleSystem(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Particle>();

    // Prevent left/right systems from syncing
    spawnTimer = int(random(0, 180));
    nextSpawn = int(random(150, 260));
  }

  // Fill the screen with some leaves immediately
  void populate(int amount) {
    for (int i = 0; i < amount; i++) {
      particles.add(new Particle(origin, true));
    }
  }

  void addParticle() {
    spawnTimer++;

    if (spawnTimer >= nextSpawn) {
      particles.add(new Particle(origin, false));

      spawnTimer = 0;

      // Random amount of time until the next leaf
      nextSpawn = int(random(150, 260));
    }
  }

  void run() {
    for (int i = particles.size() - 1; i >= 0; i--) {

      Particle p = particles.get(i);
      p.run();

      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}