class Ball {
  float ballX;
  float ballY;
  float ballR;
  float xSpeed = 9;
  float ySpeed = 1;
  float edgeSpeed = -1;


  Ball(float tempR, float tempX, float tempY) {
    ballR = tempR;
    ballX = tempX;
    ballY = tempY;
  }


  void display() {
    ballX = ballX + xSpeed;
    ballY = ballY + ySpeed;
    fill(255);
    stroke(50);
    ellipse(ballX, ballY, ballR*2, ballR*2);
  }
  void checkEdges() {
    if (ballX > width || ballX < 0) {
      xSpeed = xSpeed * edgeSpeed;
    } else if (ballY > height || ballY < 0) {
      ySpeed = ySpeed * edgeSpeed;
    }
  }
  boolean checkGoal(Ball a, Goal b) {
    float distX = abs((a.ballX + a.ballR) - (b.goalPostX + b.goalWidth/2));
    float distY = abs((a.ballY + a.ballR) - (b.goalPostY + b.goalLength/2));
    float combinedHalfWidths = a.ballR + b.goalWidth/2;
    float combinedHalfLengths = a.ballR + b.goalLength/2;

    if (distX < combinedHalfWidths) {

      if (distY < combinedHalfLengths) {
        return true;
      }
    }
    return false;
  }
}

/*
  boolean checkGoal(Goalpost other) {
 float d = dist(b1.ballX, b1.ballY, other.goalPostX, other.goalPostY);
 if (d < b1.ballR + other.goalWidth) {
 return true;
 } else {
 return false;
 }
 }
 */
