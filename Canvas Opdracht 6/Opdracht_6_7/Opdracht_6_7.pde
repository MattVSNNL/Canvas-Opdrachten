float cijfer = 5.6;
boolean diploma = false;
boolean vrijstelling = false;

if(vrijstelling || cijfer >= 5.5){
    diploma = true;
}

if (diploma){
    println("Gefeliciteerd");
}else{
    println("Failure");
}