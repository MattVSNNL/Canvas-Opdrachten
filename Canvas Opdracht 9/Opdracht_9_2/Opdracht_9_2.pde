// Mijn systeem is hetzelfde als vorige opdracht
void setup() {
  size(500, 500);
  println(Gemiddelde(3, 5)); // You can input as many numbers as you want but you can do two
}

int Gemiddelde(int... args){
    int index = 0;
    int count = 0;
    for (int i = 0; i < args.length; i++){
        index++;
    }
    for (int val: args){
        count += val;
    }
    return count / index;
}
