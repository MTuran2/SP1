class Goal {
  int goalLength;
  int goalWidth;
  int goalPostX;
  int goalPostY;


  Goal(int tempL, int tempW, int tempX, int tempY) {
  goalLength = tempL;
  goalWidth = tempW;
  goalPostX = tempX;
  goalPostY = tempY;
  }

  void display() {
    fill(255);
    stroke(0);
    rect(goalPostX, goalPostY, goalWidth, goalLength);
  }
}
