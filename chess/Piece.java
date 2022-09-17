abstract class Piece {
  private String name;
  private int points;
  
  public Piece(String name, int points) {
     this.name = name; 
     this.points = points;
  }
  
  public String getName() {
     return this.name; 
  }
  
  public void allMoves(String position) {}
}

class Knight extends Piece {
  final double maxDistance = Math.sqrt(Math.pow(1.0, 2.0) + Math.pow(2.0, 2.0)); 
  final double[] angles = new double[8];
  
  public Knight() {
     super("N", 3);
     double angle = 22.5;
     for (int i = 0; i < this.angles.length; i++) {
       this.angles[i] = Math.toRadians(angle);
       angle += 360 / this.angles.length;
     }
  }
  
  @Override
  public void allMoves(String position) {
    int file = position.charAt(0) - 97;
    int rank = Integer.parseInt(position.charAt(1)+"") - 1;
    for (int i = 0; i < this.angles.length; i++) {
      char newFile = (char)(Math.round(file + Math.cos(angles[i]) * this.maxDistance) + 97);
      int newRank = (int)(Math.round(rank + Math.sin(angles[i]) * this.maxDistance) + 1);
      System.out.print(newFile);
      System.out.print(newRank);
      System.out.print(",");
    }
  }
}
