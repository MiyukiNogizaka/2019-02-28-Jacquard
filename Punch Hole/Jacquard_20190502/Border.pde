public class Border implements Style {
  //1 white 
  //3 orange
  //2 green
  //5 red
  //4 blue
  // 6 Yellow
  int size_x = 4;
  int size_y = 3;
  int[][] data =  {{3, 1, 1, 2}, 
    {1, 6, 2, 1}, 
    {3, 1, 2, 1}};

  //Border(int x, int y) {
  //  //this.size_x = x;
  //  //this.size_y= y;
  //  //this.data = new int[size_x][size_y];
  //}

  @Override
    void display(float start_x, float start_y, float sizex, float sizey) {
    pushMatrix();
    for (float i=start_x; i< start_x+sizex; i+=0) {
      for (int x = 0; x<this.size_x; x++) {
        for (float j=start_y; j<start_y+sizey; j+=0) {
          for (int y= 0; y<this.size_y; y++) {
            if (this.data[y][x] == 1) fill(255); 
            else if (this.data[y][x] == 2) fill(51, 117, 23); // green 
            else if (this.data[y][x] == 3) fill(241, 175, 0);  // Cam
            else if (this.data[y][x] == 4) fill(0, 0, 255);
            else if (this.data[y][x] == 5) fill(255, 0, 0);
            else if (this.data[y][x] == 6) fill(255, 255, 0); // Yellow
            //else fill(0, 255, 0);
            rect(i*scale, j*scale, scale, scale);
            j++;
            if (j== start_y+sizey) break;
          }
        }
        i++;
        if (i== start_x+sizex) break;
      }
    }
    popMatrix();
  }
  @Override
    void initial() {
  }
}
