Ball b1;
Goal g1;
Goal g2;
Pitch pitch1;
Team t1;
Team t2;


void setup() {
  size(1280, 640);
  b1 = new Ball(20, 0, 0);
  g1 = new Goal(150, 30, 0, 245);
  g2 = new Goal(150, 30, 1250, 245);
  pitch1 = new Pitch();
  t1 = new Team("FCK", color(0,0,255), color(235,235,235));
  t2 = new Team("BIF", color(30,30,255), color(235,207,52));
  
}

void draw() {
  background (0);
  if (b1.checkGoal(b1, g1)== true) {
    setColor(t1.getColor()[0], t1.getColor()[1]);
  }
  if (b1.checkGoal(b1, g2)== true) {
  setColor(t2.getColor()[0], t2.getColor()[1]);
  }

  b1.display();
  b1.checkEdges();
  g1.display();
  g2.display();
  pitch1.display();
}


void setColor(color a, color b) {
  int t = millis()+1000;
  while (millis() < t) {
    if (second() % 2 == 0) {
      background(a);
    } else {
      background(b);
    }
  }
}
