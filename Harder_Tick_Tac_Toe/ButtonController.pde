class ButtonController {
  String buttonText;
  PVector buttonPosition;
  PVector buttonSize;
  color buttonColor;
  color textColor;
  boolean visible = true;

  ButtonController(String t, PVector pos, PVector size, color Color, color tColor) {
    this.buttonText = t;
    this.buttonPosition = pos;
    this.buttonSize = size;
    this.buttonColor = Color;
    this.textColor = tColor;
  }

  public void display() {
    if (!visible) {
      return;
    }

    fill(buttonColor);
    noStroke();

    rect(buttonPosition.x, buttonPosition.y, buttonSize.x, buttonSize.y);
    fill(textColor);
    text(buttonText, buttonPosition.x, buttonPosition.y, buttonSize.x, buttonSize.y);
    fill(255);
  }

  void hide() {
    visible = false;
  }

  void show() {
    visible = true;
  }

  boolean isVisible() {
    return visible;
  }

  void mousePressed() {
    if (!visible) {
      return;
    }

    if (mouseX >= buttonPosition.x - buttonSize.x / 2 && mouseX <= buttonPosition.x + buttonSize.x / 2 && mouseY >= buttonPosition.y - buttonSize.y / 2 && mouseY <= buttonPosition.y + buttonSize.y / 2) {
      hide();
      gameStarted = true;
    }
  }
}
