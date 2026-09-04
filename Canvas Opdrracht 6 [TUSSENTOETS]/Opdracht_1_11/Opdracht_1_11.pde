float steen1 = floor(random(1, 10));
float steen2 = floor(random(1, 10));
float steen3 = floor(random(1, 10));
float damage;

String resultaat = "";

if (steen1 == 1.0 || steen2 == 1.0 || steen3 == 1.0){
    resultaat = "MISS!";
}
// We checken ook of het niet 6 is zodat de damage niet wordt gedaan
else if ((steen1 != 1.0 || steen2 != 1.0 || steen3 != 1.0) && (steen1 != 6.0 || steen2 != 6.0 || steen3 != 6.0)){
    resultaat = "+HIT!";
    damage = (steen1 + steen2 + steen3) / 3;
    println("Damage done: " + str(damage));
}

if (steen1 == 1.0 && steen2 == 1.0 && steen3 == 1.0){
    resultaat = "CRITICAL MISS!";
}

if (steen1 == 6.0 && steen2 == 6.0 && steen3 == 6.0){
    resultaat = "YOU WON!";
}

print(resultaat);