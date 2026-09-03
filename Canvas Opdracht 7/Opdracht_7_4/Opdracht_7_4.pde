int dag = 7;

void setup() {
  switch(dag) {
  case 1:
    printDay("Maandag");
    break;
  case 2:
    printDay("Dinsdag");
    break;
  case 3:
    printDay("Woensdag");
    break;
  case 4:
    printDay("Donderdag");
    break;
  case 5:
    printDay("Vrijdag");
    break;
  case 6:
    printDay("Zaterdag");
    break;
  case 7:
    printDay("Zondag");
    break;
  default:
    println("Dit is geen geldige dag");
    break;
  }
}

void printDay(String DayName) {
  println("It is " + DayName);
}