boolean benJan = true; // Als false, dan speel je als Klaas

int totaalAantalLessen = 20;
int gevolgdeLessen = 16;
float cijfer = 5.4;

if (benJan){
    cijfer = 7.0;
    gevolgdeLessen = 17;
    println("Ran");
}

println(cijfer + " " + gevolgdeLessen);

float percentageLessenGevolgd;

percentageLessenGevolgd = (gevolgdeLessen / (float)totaalAantalLessen) * 100;

if (cijfer >= 5.5 && percentageLessenGevolgd >= 80) {
  println("geslaagd");
} else {
  println("gezakt");
}
