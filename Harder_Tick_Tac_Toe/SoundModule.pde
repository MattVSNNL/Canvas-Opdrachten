import processing.sound.*;
import processing.core.PApplet;

class Sound {
  SoundFile sound;

  Sound(PApplet app, String filePath, float volume, boolean isLooped) {
    sound = new SoundFile(app, filePath);
    sound.amp(volume);
    if (isLooped) {
      sound.loop();
    }
  }

  void play() {
    sound.play();
  }
}