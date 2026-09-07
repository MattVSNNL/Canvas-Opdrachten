void setup() {
  size(500, 500);

  drawLine(146, 126, 145, 243);
  drawLine(145, 125, 273, 125);
  drawLine(143, 242, 275, 240);
  drawLine(275, 240, 273, 123);
}

void drawLine(int xPos, int yPos, int widthVal, int heightVal){
  line(xPos, yPos, widthVal, heightVal);
}