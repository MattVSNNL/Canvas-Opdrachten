void setup() {
  size(500, 500);
}

PVector getMiddle() {
  return new PVector((width / 2) / 2, (height / 2) / 2);
}

void draw() {
  PVector middle = getMiddle();
  Rectangle rect = new Rectangle(int(middle.x), int(middle.y), 230, 230);

  rect.Draw();
}

class Rectangle {
  int x;
  int y;
  int w;
  int h;

  public Rectangle(int xPos, int yPos, int wPos, int hPos) {
    this.x = xPos;
    this.y = yPos;
    this.w = wPos;
    this.h = hPos;
  }

  public void Draw() {
    rect(x, y, w, h);
  }
}
