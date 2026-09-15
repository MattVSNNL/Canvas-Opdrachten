class Text{
    String text;
    PVector position;
    PFont font;

    Text(String txt, PVector pos, PFont fnt){
        text = txt;
        position = pos;
        font = fnt;
        textFont(font);
        text(text, position.x, position.y);
    }

    public void update(String newText){
        text = newText;
    }

    public void display(){
        textFont(font);
        text(text, position.x, position.y);
    }
}