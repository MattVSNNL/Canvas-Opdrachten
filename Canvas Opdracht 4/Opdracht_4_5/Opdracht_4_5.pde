Math math = new Math();

int seconds = 800000000;

void setup(){
    println("Years: " + math.Calculate(seconds, "years"));
    println("Days: " + math.Calculate(seconds, "days"));
    println("Hours: " + math.Calculate(seconds, "hours"));
}

class Math{
    HashMap<String, Float> secondTypes = new HashMap<String, Float>();
    Math(){
        secondTypes.put("hours", 3600.0);
        secondTypes.put("days", 86400.0);
        secondTypes.put("years", 31536000.0);
    }
    public float Calculate(float time, String type){
        return round(time / secondTypes.get(type));
    }
}
