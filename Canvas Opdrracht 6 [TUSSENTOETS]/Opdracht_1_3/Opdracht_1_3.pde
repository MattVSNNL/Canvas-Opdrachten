// Dit is mijn code van 6.4 maar de AgeGroups verandert voor wat de toets wilt

import java.util.ArrayList;

ArrayList<AgeGroup> ageGroups = new ArrayList<AgeGroup>();

int currentAge = 5;

void setup(){
    
    ageGroups.add(new AgeGroup("Baby", 1));
    ageGroups.add(new AgeGroup("Dreumes", 2));
    ageGroups.add(new AgeGroup("Peuter", 4));
    ageGroups.add(new AgeGroup("Kleuter", 6));

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