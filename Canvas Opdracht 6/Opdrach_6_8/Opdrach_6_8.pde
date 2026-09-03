float cijfer = 8.1;
boolean diploma = false;
boolean cumlaude = false;

if(cijfer >= 5.5){
    diploma = true;
}

if (cijfer >= 8.0){
    diploma = false; // To cancel the diploma celebration
    cumlaude = true;
}

if (diploma){
    println("Gefeliciteerd");
}else if(cumlaude){
    println("Gefeliciteerd met cumlaude");
}else{
    println("Failure");
}