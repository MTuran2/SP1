class Pitch {
  void display() {
    stroke(255);
    noFill();
    strokeWeight(4);
    line(width/2, 0, width/2, height);
    ellipse(width/2, height/2, 200, 200);
    ellipse(width/2, height/2, 5, 5);
    rect(0, height/2-200, 200, 400);
    rect(width-204, height/2-200, 200, 400);
    rect(0, height/2-100, 100, 200);
    rect(width-104, height/2-100, 100, 200);
  }
}
