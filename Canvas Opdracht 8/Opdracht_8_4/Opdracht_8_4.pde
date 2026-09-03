int xWaarde = 20;

void setup() {
  size(250, 250);
  for (int i = 0; i < 10; i++) {
    rect(xWaarde, 50, 15, 15);
    xWaarde += 20;
  }
}