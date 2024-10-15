class Lightning {
  int x, y;  // declares location variables
  float thickness; //declares line weight
  
  public Lightning() {
    x = (int)(Math.random() * width);  // Creates a value between 0-1 and multiplies it by the width
    y = 0; // y begins at zero
    thickness = 12; // line weight begins at zero
  }
  
  public void drawNext() {
    int dx = (int)(Math.random() * 73) - 36;  //creates a random int between -36 and 36

    int dy = (int)(Math.random() * 60) + 1;  // creates a random int between 0 and 60
    
    print(dy+", ");
    
    strokeWeight(thickness);  // line weight begins with 12 line weight
    
    line(x, y, x + dx, y + dy); // create a straight line with a beginning of x, y and ending with x,y plus the random value
    x += dx;
    y += dy; // after printing x, y add the value of dx, dy to it. 
    thickness -= dy*9.0/height; // each time it repeats reduce the thickness of the line
  }
}

ArrayList<Lightning> strikes = new ArrayList<Lightning>(); //create a new list for each strike


void setup() {
  size(400, 400); // set canvas size
}

void draw() {
  fill(0, 20); // a fill with low opacity to create the fade out effect
  noStroke();
  rect(0, 0, width, height);

  stroke(random(120,200), random(120,200), random(120,255)); // white line of lightning
  
  for (int i = strikes.size() - 1; i >= 0; i--) {  
    
    /*there is an int that is the same amount of elements as what is present in the lightning class object, -1 to remove 0 based index. 
    If i is greater or equal to 0t, decrement from the value of i
    */
    strikes.get(i).drawNext();  
    if (strikes.get(i).y > height)
      strikes.remove(i); // this removes any new elements that go beyond the visible scope of the canvas
  }
  
}

void mouseClicked() {
  strikes.add(new Lightning());  // links the creation of the new strike to the event of the mouse click. 
}
