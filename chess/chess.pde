void setup() {
  size(400, 400); 
  noLoop();
}

void draw() {
  Piece knight = new Knight();
  text(knight.getName(), 0, 16);
  knight.allMoves("d4");
} 
