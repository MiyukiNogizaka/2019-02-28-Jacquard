void haft(int posx, int posy) {
  int desy = 600;
  ellipseMode(LEFT);
  scale(0.1);
  background(255);
  strokeWeight(1);
  //stroke(0);
  noStroke();
  b.display(102+posx, 0+posy, 608, desy);
  b2.display(0+posx, 0+posy, 102, desy);
  b2.display(710+posx, 0+posy, 102, desy);
  ryon.display(102+posx, 18+132+744+posy, 608, 60);
  round.discreteImage(102+176+76+104+posx, 18+132+96+posy, 176, 134, 1);
  round_2.discreteImage(102+76+posx, 18+132+190+posy, 176, 134, 1);
  //println("Done");
}

void haft_2(int posx, int posy) {
  int desy = 600;

  ellipseMode(LEFT);
  scale(0.1);
  background(255);
  strokeWeight(1);
  //stroke(0);
  noStroke();
  background(255);
  t.discreteImage(102+posx, desy - 102 - 18-66+posy, 608, 102, 1);
  b.display(102+posx, desy-18-66+posy, 608, 66+18);
  b.display(102+posx, desy-18-66-102-60+posy, 608, 60);
  b2.display(0+posx, 0+posy, 102, desy);
  b2.display(710+posx, 0+posy, 102, desy);
  b.display(102+posx, 0+posy, 608, desy-18-66-102-60-60);
  ryon.display(102+posx, desy-18-66-102-60 - 60+posy, 608, 60);
  round.discreteImage(102+76+posx, desy-18-66-102-60+posy - 60 -96 -134, 176, 134, 1);
  round_2.discreteImage(102+76+176+104+posx, desy-18-66+posy-102-60 - 60 -190-134, 176, 134, 1);
  //println("Done");
}
