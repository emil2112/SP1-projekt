class hangMan {
  int x = 400;
  int y = 200;
  hangMan() {
  }

  void displayHead() {
    ellipseMode(CENTER);
    noFill();
    strokeWeight(3);
    ellipse(x, y+50, 100, 100);
  }

  void displayBody() {
    rectMode(CENTER);
    fill(0);
    strokeWeight(3);
    rect(x, y+150, 5, 100);
  }

  void displayArms() {
    strokeWeight(3);
    line(x, y+150, x+75, y+200);
    line(x, y+150, x-75, y+200);
  }

  void displayLegs() {
    strokeWeight(3);
    line(x, y+200, x+50, y+275);
    line(x, y+200, x-50, y+275);
  }

  void displayFace() {
    noFill();
    strokeWeight(3);
    ellipse(x, y+65, 20, 20);
    //Right eye
    line(x+10, y+20, x+15, y+30);
    line(x+20, y+20, x+5, y+30);
    //Left eye
    line(x-10, y+20, x-15, y+30);
    line(x-20, y+20, x-5, y+30);
  }
}
