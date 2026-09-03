int getal1 = 0;
int getal2 = 1;

void setup() {
  for (int i = 0; i < 10; i++) {
    println(getal1);
    int volgendGetal = getal1 + getal2;
    getal1 = getal2;
    getal2 = volgendGetal;
  }
}
