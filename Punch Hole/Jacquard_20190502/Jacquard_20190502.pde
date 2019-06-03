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
boolean [][] punch_hole_1 = new boolean[812][700];
boolean [][] punch_hole_2 = new boolean[812][500];


import processing.pdf.*;
void setup() {
  textSize(80);
  textAlign(CENTER);
  size( 841, 1189);
  ellipseMode(LEFT);

  round = new Round(102+176+76+104, 18+132+96, 176, 134);
  round_2 = new Round(102+76, 18+132+190, 176, 134);

  t = new Text(0, 0, 608, 102);
}
float sc = 1;
int check = 1;
boolean record = false;

void draw()
{
  int desy1 = 500;
  int desy2 = 700;
  if (check == 1) {
    pushMatrix();

    haft_2(0, 0);
    for (int i=0; i<812; i++) {
      for (int j=0; j<700; j++) {
        color a = get(i, j);
        if ( (a == -938240)||(a == -13404905)||(a == -256) ) {
          punch_hole_1[i][j] = true;
        } else {
          punch_hole_1[i][j] = false;
          //println("true");
        }
      }
    }

    check = 0;
    popMatrix();
  } else {
    background(0);
    int prev = 0;
    PunchHole[] h = new PunchHole[10000];
    int number_of_punch = 0;
    boolean []input;
    for (int j=699; j>=0; j--) {
      input =  new boolean[812];
      h[number_of_punch] = new PunchHole();
      for (int i=0; i<812; i++) {
        input[i] = punch_hole_1[i][j];
      }
      h[number_of_punch].acquisite_data(input);
      number_of_punch ++;
    }
    //println(number_of_punch);
    //background(0);

    float scl = 0.5;
    int posx = int(width/scl/2);


    beginRecord(PDF, "punch_hole_5.pdf");
    scale(scl);
    prev = 0;
    for (int i=151; i<166; i++) {
      h[i].display(posx-int(970/2), 150*(i-151)+100, i+1);
      prev = 150*i+100;
    }
    endRecord();
    println("Done");

    beginRecord(PDF, "punch_hole_2.pdf");
    scale(scl);
    //int prev = 0;
    prev = 0;
    for (int i=106; i<121; i++) {
      h[i].display(posx-int(970/2), 150*(i-106)+100, i+1);
      prev = 150*i+100;
    }
    endRecord();
    println("Done");

    beginRecord(PDF, "punch_hole.pdf");
    scale(scl);
    prev = 0;
    for (int i=0; i<6; i++) {
      h[i].display(posx-int(970/2), 150*i+100, i+1);
      prev = 150*i+100;
    }

    for (int i=85; i<94; i++) {
      h[i].display(posx-int(970/2), 150*(i-85)+150+prev, i+1);
    }
    endRecord();
    println("Done");
    exit();



    //beginRecord(PDF, "punch_hole_6.pdf");
    //scale(scl);
    //prev = 0;
    //for (int i=246; i<252; i++) {
    //  h[i].display(posx-int(970/2), 150*(i-246)+100, i+1);
    //  prev = 150*i+100;
    //}

    //endRecord();
    //println("Done");
    //exit();

    int count = 7;
    for (int j=342; j<569; j++) {
      beginRecord(PDF, "punch_hole_"+str(count)+".pdf");
      scale(scl);
      prev = 0;
      int k = j;
      for (int i=j; i<j+15; i++) {
        h[i].display(posx-int(970/2), 150*(i-j)+100, i+1);
        prev = 150*i+100;
        k++;
      }
      j=k-1;
      count++;
      endRecord();
      println("Done");
    }
    exit();
  }
}

void keyPressed() {
  saveFrame("test.png");
  record = true;
}
