int grootte = 10;

void setup() {
  size(250, 250);
  background(255, 255, 255);
  noFill();
  for (int i = 0; i < 5; i++) {
    ellipse(125 - grootte/2, 125, grootte, grootte);
    println(grootte);
    grootte += 20;
  }
}