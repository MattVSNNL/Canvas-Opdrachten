int steen1 = 2;
int steen2 = 3;
int steen3 = 5;
int damage;

String resultaat = "";

if (steen1 == 1 || steen2 == 1 || steen3 == 1){
    resultaat = "MISS!";
}
// We checken ook of het niet 6 is zodat de damage niet wordt gedaan
else if ((steen1 != 1 || steen2 != 1 || steen3 != 1) && (steen1 != 6 || steen2 != 6 || steen3 != 6)){
    resultaat = "+HIT!";
    damage = (steen1 + steen2 + steen3) / 3;
    println("Damage done: " + str(damage));
}

if (steen1 == 1 && steen2 == 1 && steen3 == 1){
    resultaat = "CRITICAL MISS!";
}

if (steen1 == 6 && steen2 == 6 && steen3 == 6){
    resultaat = "YOU WON!";
}

print(resultaat);