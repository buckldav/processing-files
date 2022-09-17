int canvasWidth = 300;
int canvasHeight = 300;

void setup() {
  size(canvasWidth, canvasHeight);
  background(255);

  // TODO: Call crust and cheese functions first
  crust();
  cheese();
  // TODO: Call topping functions (pepper(x, y); and the other two functions you write);
  // Call the functions multiple times to make multiple of the same topping
}

void crust() {
  noStroke();
  fill(250, 176, 5);
  circle(canvasWidth/2, canvasHeight/2, canvasWidth-10);
}

void cheese() {
  noStroke();
  fill(252, 211, 100);
  circle(canvasWidth/2, canvasHeight/2, canvasWidth-30);
}

void pepper(int x, int y) {
  stroke(38, 64, 41);
  strokeWeight(2);
  fill(92, 155, 99);
  beginShape();
  vertex(x, y);
  vertex(x + 15, y + 15);
  vertex(x, y + 30);
  vertex(x + 8, y + 15);
  vertex(x, y);
  endShape(CLOSE);
}

// TODO: Write TWO more topping functions
