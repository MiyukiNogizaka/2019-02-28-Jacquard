import peasy.*;
PeasyCam cam;
float scale = 10;

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
  size(1189, 841);
  //size(841, 1189);
  ellipseMode(LEFT);
  round = new Round(102+176+76+104, 18+132+96, 176, 134);
  round_2 = new Round(102+76, 18+132+190, 176, 134);

  t = new Text(0, 0, 608, 102);
  println(2, color(51, 117, 23));
  println(3, color(241, 175, 0));
  println(3, color(255, 140, 0));
  
  println(4, color(0, 0, 255));
  println(5, color(255, 0, 0));
  println(6, color(255, 255, 0));
  println(7, color(156, 153, 0));
  println(8, color(191, 202, 230));
  println(1, color(255));
}

float sc = 1;
int check = 1;
boolean record = false;

int [][] data = new int[812][600];
void draw()
{


  if (check ==1) {
    haft_2(0, 0);
    for (int i=0; i<812; i++) {
      for (int j=0; j<600; j++) {
        color a = get(i, j);
        //println(a);
        if (a == -13404905) {
          data[i][j] = 2;
        } else if (a == -938240 || a == -29696) data[i][j] = 3;
        else if (a == -16776961) data[i][j] = 4;
        else if (a == -65536) data[i][j] = 5;
        else if (a == -256) data[i][j] = 6;
        else if (a == -6514432) data[i][j] = 7;
        else if (a == -4207898) data[i][j] = 8;
        else if (a == -1) data[i][j] = 1;
      }
      //stop();
      //println(i);
    }
    check = 0;
  } else {
    //for (int i=0; i<812; i++) {
    //  println("");
    //  for (int j=0; j<500; j++) {
    //    print(data[i][j]);
    //  }
    //}


    beginRecord(PDF, "part1.pdf");
    background(255);
    split_layer(0, 0, 406, 300);
    endRecord();

    beginRecord(PDF, "part2.pdf");
    background(255);
    split_layer(406, 0, 812, 300);
    endRecord();

    beginRecord(PDF, "part3.pdf");
    background(255);
    split_layer(0, 300, 406, 600);
    endRecord();

    beginRecord(PDF, "part4.pdf");
    background(255);
    split_layer(406, 300, 812, 600);
    endRecord();
    exit();
  }


  //beginRecord(PDF, "test_2.pdf");
  //haft_2(width/2-812/2, height/2-desy2/2);
  //endRecord();
  //exit();
}

void split_layer(int start_x, int start_y, int end_x, int end_y) {
  //float posx = 0;
  //float posy = 0;
  sc = 27;
  float posx = width/2 - (end_x - start_x)/2;
  float posy = height/2 - (end_y - start_y)/2;

  scale(0.1);
  pushMatrix();
  for (int i=start_x; i<end_x; i++) {
    //println("");

    stroke(1);

    for (int j=start_y; j<end_y; j++) {
      if (this.data[i][j] == 1) fill(255);
      else if (this.data[i][j] == 2) fill(51, 117, 23); 
      else if (this.data[i][j] == 3) fill(255, 140, 0); 
      else if (this.data[i][j] == 4) fill(0, 0, 255); 
      else if (this.data[i][j] == 5) fill(255, 0, 0);
      else if (this.data[i][j] == 6) fill(255, 255, 0);
      else if (this.data[i][j] == 7) fill(156, 153, 0);
      else if (this.data[i][j] == 8) fill(191, 202, 230);
      //print(data[i][j]);
      rect((i-start_x)*sc+posx, (j-start_y)*sc+posy, sc, sc);
    }
  }
  popMatrix();
}
