float num1 = random(1, 100);
float num2 = random(1, 100);
float num3 = random(1, 100);

void setup(){
    size(500, 500);
    float average = (num1 + num2 + num3) / 3;
    println(average);
}