Functions func = new Functions();

void setup(){
  // Opdracht 2.1
  print("Wassup ");
  println("bih");
  
  // Opdracht 2.2
  size(800, 800);
  
  // Opdracht 2.3
  func.AddText("Text1", 100, 200);
  func.AddText("Text2", 200, 200);
  func.AddText("Text3", 300, 200);
}

class Functions {
 public void AddText(String Text, float x, float y){
  text(Text, x, y); 
 }
}
