void setup() {
  Person Nour = new Person("Nour", 17, "Possibly Female");

  Nour.GetName();
  Nour.GetAge();
  Nour.GetGender();
}

class Person {
  String name;
  int leeftijd;
  String geslacht;

  public Person(String n, int l, String g) {
    this.name = n;
    this.leeftijd = l;
    this.geslacht = g;
  }

  public void GetName() {
    println(this.name);
  }
  public void GetAge() {
    println(this.leeftijd);
  }
  public void GetGender() {
    println(this.geslacht);
  }
}
