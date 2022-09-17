/**
 * Creates a circle or rect, depending on the
 * number of arguments provided to the Shape constructor.
 */
class Shape {
  private color c = #000000;
  private int x, y, d, w, h = 0;
  public Shape(color c, int x, int y, int d) {
    this.c=c;
    this.x=x;
    this.y=y;
    // circle
    this.d=d;
  }
  
  public Shape(color c, int x, int y, int w, int h) {
    this.c=c;
    this.x=x;
    this.y=y;
    // rect
    this.w=w;
    this.h=h;
  }

  public void draw() {
    noStroke();
    fill(this.c);
    // if this.d exists, it's a circle
    if (this.d != 0) {
      circle(this.x, this.y, this.d);
    } else {
      rect(this.x, this.y, this.w, this.h);
    }
  }

  public boolean isColliding(int mouseX, int mouseY) {
    if (this.d != 0) {
      // collision for a circle
      // TODO
      return false;
    } else {
      // collision for a rect
      // TODO
      return false;
    }
  }
}

void winScreen() {
  clear();
  text("You Win!", 100, 100);
}

void loseScreen() {
  clear();
  text("You Lose!", 100, 100);
}

Shape goodShape = new Shape(#FF0000, 100, 200, 50);
Shape badShape = new Shape(#00FF00, 300, 200, 50, 50);

void setup() {  
  size(600, 400);
  background(255);
}

void draw() {
  // cursors: https://processing.org/reference/cursor_.html
  cursor(ARROW);
  
  goodShape.draw();
  if (goodShape.isColliding(mouseX, mouseY)) {
    cursor(HAND);
    if (mousePressed) {
      winScreen();    
    }
  }

  badShape.draw();
  if (badShape.isColliding(mouseX, mouseY)) {
    cursor(HAND);
    if (mousePressed) {
      loseScreen();    
    }
  }
}
