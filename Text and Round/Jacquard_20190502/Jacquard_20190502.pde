import peasy.*;
PeasyCam cam;
int scale = 10;

Border b = new Border();
Border_2 b2 = new Border_2();
Ryon ryon = new Ryon();
Round round;
Round round_2;
int scale_1 = 2;
Text t;

import processing.pdf.*;
void setup() {
  textSize(90);
  textAlign(CENTER, CENTER);
  //size(841, 1189);

    size( 1189,841);
    ellipseMode(LEFT);

  round = new Round(102+176+76+104, 18+132+96, 176, 134);
  round_2 = new Round(102+76, 18+132+190, 176, 134);

  t = new Text(0, 0, 608, 102);
}

int check = 1;
boolean record = false;
void haft(int posx, int posy) {
  ellipseMode(LEFT);
  scale(0.1);
  background(255);
  strokeWeight(1);
  stroke(0);
  b.display(102+posx, 0+posy, 608, 600);
  b2.display(0+posx, 0+posy, 102, 600);
  b2.display(710+posx, 0+posy, 102, 600);
  ryon.display(102+posx, 18+132+744+posy, 608, 60);
  round.discreteImage(102+176+76+104+posx, 18+132+96+posy, 176, 134, 1);
  round_2.discreteImage(102+76+posx, 18+132+190+posy, 176, 134, 1);
  println("Done");
}

void haft_2(int posx, int posy) {
  ellipseMode(LEFT);
  scale(0.1);
  background(255);
  strokeWeight(1);
  stroke(0);
  background(255);
  t.discreteImage(102+posx, 600 - 102 - 18-66+posy, 608, 102, 1);
  b.display(102+posx, 600-18-66+posy, 608, 66+18);
  b.display(102+posx, 600-18-66-102-60+posy, 608, 60);
  b2.display(0+posx, 0+posy, 102, 600);
  b2.display(710+posx, 0+posy, 102, 600);
  b.display(102+posx, 0+posy, 608, 600-18-66-102-60-60);
  ryon.display(102+posx, 600-18-66-102-60 - 60+posy, 608, 60);
  round.discreteImage(102+76+posx, 600-18-66-102-60+posy - 60 -96 -134, 176, 134, 1);
  round_2.discreteImage(102+76+176+104+posx, 600-18-66+posy-102-60 - 60 -190-134, 176, 134, 1);
  println("Done");
}
int sc = 5;
void draw()
{
  if (check ==1) {
    background(255);
    scale(0.1);
    t.discreteImage(102, 600 - 102 - 18 - 66, 608, 102, 1);
    round.discreteImage(0, 0, 176, 134, 1);
    check = 0;
    //stop();
  } else {
    //scale(0.2);
    background(255);
    stroke(0);
    //sc = 20;
    //recordCharacter();

    beginRecord(PDF, "Round.pdf");
    int posx = 0;
    int desx = 176;
    int posy = 0;
    int desy = 134;
    int display_posx = width/2-(desx-posx)*sc/2;
    int display_posy = height/2-(desy-posy)*sc/2;
    roundRecord(posx, posy, 176, 134, display_posx, display_posy);
    //character(posx, posy, desx, desy, display_posx, display_posy);
    endRecord();
    print("done");

    exit();
  }
}
void recordCharacter() {
  int posx = 112;
  int desx = 169;
  int posy = 19;
  int desy = 86;
  int display_posx = width/2-(desx-posx)*sc/2;
  int display_posy = height/2-(desy-posy)*sc/2;
  //display_posx +=80;
  sc = 12;
  beginRecord(PDF, "D.pdf");
  character(posx, posy, desx, desy, display_posx, height/2-(desy-posy)*sc/2);
  endRecord();    

  //sc = 10;
  sc = 15;
  beginRecord(PDF, "E.pdf");
  posx = 179;
  desx = 219;
  display_posx = width/2-(desx-posx)*sc/2;
  display_posy = height/2-(desy-posy)*sc/2;
  character(posx, posy, desx, desy, display_posx, height/2-(desy-posy)*sc/2);
  //character(232, 13, 256, 52, display, 0);
  endRecord();

  sc = 12;
  beginRecord(PDF, "T.pdf");
  posx = 220;
  desx = 278;
  display_posx = width/2-(desx-posx)*sc/2;
  display_posy = height/2-(desy-posy)*sc/2;
  //display_posx +=80;
  character(posx, posy, desx, desy, display_posx, display_posy);
  endRecord();
  print("done");


  beginRecord(PDF, "K.pdf");
  posx = 337;
  desx = 387;

  display_posx = width/2-(desx-posx)*sc/2;
  //display_posx +=80;
  display_posy = height/2-(desy-posy)*sc/2;
  character(posx, posy, desx, desy, display_posx, display_posy);
  endRecord();
  print("done");

  sc = 15;
  beginRecord(PDF, "1.pdf");
  posx = 401;
  desx = 439;
  display_posx = width/2-(desx-posx)*sc/2;
  //display_posx +=80;
  display_posy = height/2-(desy-posy)*sc/2;
  //character(posx, posy, desx, desy, 0, 0);
  character(posx, posy, desx, desy, display_posx, display_posy);
  endRecord();
  print("done");

  beginRecord(PDF, "5.pdf");
  posx = 457;
  desx = 494;

  display_posx = width/2-(desx-posx)*sc/2;
  //display_posx +=80;
  display_posy = height/2-(desy-posy)*sc/2;
  //character(posx, posy, desx, desy, 0, 0);
  character(posx, posy, desx, desy, display_posx, display_posy);
  endRecord();
  print("done");
}
void character(int posx, int posy, int desx, int desy, int display_posx, int display_posy) {
  for (int i= posx; i< desx; i++) {
    for (int j= posy; j<desy; j++) {
      if (i == posx) fill (0, 255, 0);
      else if (j == posy) fill (0, 255, 0);
      else if (j == desy-1) fill (0, 255, 0);
      else if (i == desx-1) fill (0, 255, 0);
      else if (t.drawing_data[i][j] == 1) fill(255); 
      else if (t.drawing_data[i][j] == 2) fill(51, 117, 23);
      else if (t.drawing_data[i][j] == 3) fill(255, 140, 0); // Orange trong 
      else if (t.drawing_data[i][j] == 4) fill(0, 0, 255); 
      else if (t.drawing_data[i][j] == 5) fill(255, 0, 0);
      else if (t.drawing_data[i][j] == 6) fill(255, 255, 0);
      else if (t.drawing_data[i][j] == 7) fill(156, 153, 0);
      else if (t.drawing_data[i][j] == 8) fill(191, 202, 230);

      //else {
      //  fill(0);
      //}
      rect((i-posx)*sc+display_posx, (j-posy)*sc+display_posy, sc, sc);
    }
  }
}

void roundRecord(int posx, int posy, int desx, int desy, int display_posx, int display_posy) {
  for (int i= posx; i< desx; i++) {
    for (int j= posy; j<desy; j++) {
      if (i == posx) fill (0, 255, 0);
      else if (j == posy) fill (0, 255, 0);
      else if (j == desy-1) fill (0, 255, 0);
      else if (i == desx-1) fill (0, 255, 0);

      else if (round.drawing_data[i][j] == 1) fill(255); 
      else if (round.drawing_data[i][j] == 2) fill(51, 117, 23);
      else if (round.drawing_data[i][j] == 3) fill(241, 175, 0);
      else if (round.drawing_data[i][j] == 4) fill(0, 0, 255); 
      else if (round.drawing_data[i][j] == 5) fill(255, 0, 0);
      else if (round.drawing_data[i][j] == 6) fill(255, 255, 0);
      else if (round.drawing_data[i][j] == 7) fill(156, 153, 0);
      //else {
      //fill(0);
      //}
      rect((i-posx)*sc+display_posx, (j-posy)*sc+display_posy, sc, sc);
    }
  }
}
