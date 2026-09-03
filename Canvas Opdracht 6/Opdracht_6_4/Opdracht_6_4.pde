import java.util.ArrayList;

ArrayList<AgeGroup> ageGroups = new ArrayList<AgeGroup>();

int currentAge = 3;

void setup(){
    
    ageGroups.add(new AgeGroup("Baby", 2));
    ageGroups.add(new AgeGroup("Toddler", 4));
    ageGroups.add(new AgeGroup("Child", 12));
    ageGroups.add(new AgeGroup("Teenager", 20));
    ageGroups.add(new AgeGroup("Adolescent", 25));
    ageGroups.add(new AgeGroup("Adult", 100));

    for(int i = 0; i < ageGroups.size(); i++){
        if(currentAge <= ageGroups.get(i).age){
            println("You are a " + ageGroups.get(i).name);
            break;
        }
    }

}

class AgeGroup{
    String name;
    int age;

    AgeGroup(String name, int age){
        this.name = name;
        this.age = age;
    }
}