int temperatuur = -2;
int jantje = 6;
int mijnMondGehouden = 15;

String sneeuw = "Wit";
String datum = "01-04";
String mijnVerjaardag = "01-04";

double mijnLengte = 1.60;

void printValue(boolean bool){
    println("" + bool);
}

void setup() {
    if (temperatuur < 0) {
        printValue(true);
    }

    if (sneeuw != "Geel") {
        printValue(true);
    }

    if (jantje > 4){
        printValue(true);
    }

    if (mijnVerjaardag == datum) {
        printValue(true);
    }

    if (mijnLengte > 1.60) {
        printValue(true);
    }

    if (mijnMondGehouden > 10) {
        printValue(true);
    }
}