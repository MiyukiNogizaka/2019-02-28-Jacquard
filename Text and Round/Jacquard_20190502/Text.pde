public class Text implements Style {
  //1 white 
  //3 orange
  //2 green
  //5 red
  //4 blue
  // 
  int size_x = 20;
  int size_y = 20;

  int size_x_1 = 4;
  int size_y_1 = 3;
  int [][] check;
  int[][] data =  {{6, 6, 2, 8, 6, 6, 2, 8, 7, 1, 2, 8, 6, 6, 2, 8, 6, 7, 2, 8}, 
    {1, 1, 3, 3, 1, 1, 3, 3, 1, 1, 2, 3, 1, 1, 3, 3, 1, 1, 3, 2}, 
    {6, 6, 1, 1, 6, 7, 1, 1, 6, 6, 1, 1, 6, 6, 1, 1, 7, 6, 1, 1}, 
    {1, 1, 3, 3, 1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 3, 3, 1, 1, 2, 3}, 
    {6, 6, 1, 1, 7, 6, 1, 1, 6, 6, 1, 1, 6, 7, 1, 1, 6, 6, 1, 1}, 
    {1, 1, 3, 3, 1, 1, 2, 3, 1, 1, 3, 3, 1, 1, 3, 2, 1, 1, 3, 3}, 
    {6, 7, 1, 1, 6, 6, 1, 1, 6, 6, 1, 1, 7, 6, 1, 1, 6, 6, 1, 1}, 
    {1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 3, 3, 1, 1, 2, 3, 1, 1, 3, 3}, 
    {7, 6, 1, 1, 6, 6, 1, 1, 6, 7, 1, 1, 6, 6, 1, 1, 6, 6, 1, 1}, 
    {1, 1, 2, 3, 1, 1, 3, 3, 1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 3, 3}, 
    {6, 6, 8, 2, 6, 6, 8, 2, 7, 6, 8, 2, 6, 6, 8, 2, 6, 7, 8, 2}, 
    {1, 1, 3, 3, 1, 1, 3, 3, 1, 1, 2, 3, 1, 1, 3, 3, 1, 1, 3, 2}, 
    {6, 6, 1, 1, 6, 7, 1, 1, 6, 6, 1, 1, 6, 6, 1, 1, 7, 6, 1, 1}, 
    {1, 1, 3, 3, 1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 3, 3, 1, 1, 2, 3}, 
    {6, 6, 1, 1, 7, 6, 1, 1, 6, 6, 1, 1, 6, 7, 1, 1, 6, 6, 1, 1}, 
    {1, 1, 3, 3, 1, 1, 2, 3, 1, 1, 3, 3, 1, 1, 3, 2, 1, 1, 3, 3}, 
    {6, 7, 1, 1, 6, 6, 1, 1, 6, 6, 1, 1, 7, 6, 1, 1, 6, 6, 1, 1}, 
    {1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 3, 3, 1, 1, 2, 3, 1, 1, 3, 3}, 
    {7, 6, 1, 1, 6, 6, 1, 1, 6, 7, 1, 1, 6, 6, 1, 1, 6, 6, 1, 1}, 
    {1, 1, 2, 3, 1, 1, 3, 3, 1, 1, 3, 2, 1, 1, 3, 3, 1, 1, 3, 3}, 
  };


  int[][] data_outside =  {
    {1, 1, 7, 7, 1, 1, 7, 7, 1, 1, 2, 7, 1, 1, 7, 7, 1, 1, 7, 2}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 7, 7, 1, 1, 7, 2, 1, 1, 7, 7, 1, 1, 7, 7, 1, 1, 2, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 7, 7, 1, 1, 2, 7, 1, 1, 7, 7, 1, 1, 7, 2, 1, 1, 7, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 7, 2, 1, 1, 7, 7, 1, 1, 7, 7, 1, 1, 2, 7, 1, 1, 7, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 2, 7, 1, 1, 7, 7, 1, 1, 7, 2, 1, 1, 7, 7, 1, 1, 7, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 7, 7, 1, 1, 7, 7, 1, 1, 2, 7, 1, 1, 7, 7, 1, 1, 7, 2}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 7, 7, 1, 1, 7, 2, 1, 1, 7, 7, 1, 1, 7, 7, 1, 1, 2, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 7, 7, 1, 1, 2, 7, 1, 1, 7, 7, 1, 1, 7, 2, 1, 1, 7, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 7, 2, 1, 1, 7, 7, 1, 1, 7, 7, 1, 1, 2, 7, 1, 1, 7, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 1, 2, 7, 1, 1, 7, 7, 1, 1, 7, 2, 1, 1, 7, 7, 1, 1, 7, 7}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  };


  int [][] drawing_data;
  Text(int posx, int posy, int sizex, int sizey) {
    int i0=0;
    //for(in
    drawing_data = new int[sizex][sizey];
    //posx*=scale;
    //posy*=scale;
    //sizex*=scale;
    //sizey*=scale;
    int scale = 1;
    this.raw_display(posx, posy, sizex, sizey);
    //delay(10000);
    this.check = new int[sizex][sizey];

    print(posx, posy, sizex, sizey);
    for (int  i=posx; i< posx+sizex; i+=1) {
      int j0=0;
      for (int j=posy; j<posy+sizey; j+=1) {

        int count = 0;
        for (int k=i; k<i+1; k++)
        {
          for (int h=j; h<j+1; h++) {

            color a= get(k, h);
            if ( a ==-1) {
              check[i0][j0] = 1;
            } else {          

              check[i0][j0] = 0;
            }
          }
        }

        j0++;
      }
      i0++;
    }
    //print(check[0][0]);
  }
  public void discreteImage(int posx, int posy, int sizex, int sizey, int mode) {
    point(posx, posy);
    //int i0=this.size_x-1;
    int j0=0;
    ////int i1=this.size_x-1;
    int j1=0;
    int i0=0;
    //int j0=this.size_y-1;
    int i1=0;
    //int j1=this.size_y-1;



    for (int  i=posx; i< posx+sizex; i+=1) {
      int k0 = 0;
      j0=0;
      j1=0;
      for (int j=posy; j<posy+sizey; j+=1) {

        //if (false) {
        if (check[i-posx][j-posy]==1) {
          //fill(255);
          //data[i0][j0] = 1;
          this.drawing_data[i-posx][j-posy] = this.data[j0][i0];
          if (this.data[j0][i0] == 1) fill(255);
          else if (this.data[j0][i0] == 2) fill(51, 117, 23); 
          else if (this.data[j0][i0] == 3) fill(255, 140, 0); 
          else if (this.data[j0][i0] == 4) fill(0, 0, 255); 
          else if (this.data[j0][i0] == 5) fill(255, 0, 0);
          else if (this.data[j0][i0] == 6) fill(255, 255, 0);
          else if (this.data[j0][i0] == 7) fill(156, 153, 0);
          else if (this.data[j0][i0] == 8) fill(191, 202, 230);
        } else {
          //fill(0);
          //print(this.data_outside[j1][i1]);
          this.drawing_data[i-posx][j-posy] = this.data_outside[j1][i1]; 
          if (this.data_outside[j1][i1] == 1) fill(255); 
          else if (this.data_outside[j1][i1] == 2) fill(51, 117, 23); 
          else if (this.data_outside[j1][i1] == 3) fill(255, 140, 0); 
          else if (this.data_outside[j1][i1] == 4) fill(0, 0, 255); 
          else if (this.data_outside[j1][i1] == 5) fill(255, 0, 0);
          else if (this.data_outside[j1][i1] == 6) fill(255, 255, 0);
          else if (this.data_outside[j1][i1] == 7) fill(156, 153, 0);

          //data[i0][j0] = 0; // black  
          //fill(0);
        }
        println(i-posx, j-posy, j1);
        rect(i*scale, j*scale, scale, scale);
        j0++;
        if (j0 == this.size_y) j0=0;
        j1++;
        if (j1 == this.size_y) j1=0;
      }

      i0++;
      if (i0 == this.size_x) i0=0;
      i1++;
      if (i1 == this.size_x) i1=0;
    }
  }
  public void raw_display(float start_x, float start_y, float sizex, float sizey) {
    textAlign(CENTER, CENTER);
    noStroke();
    fill(255);
    rect(start_x, start_y, sizex, sizey);
    stroke(0);

    fill(0);
    text("DET-K15", start_x+(sizex)/2, start_y+(sizey)/2-10);
    //text("D", (start_x+sizex)/2, (start_y+sizey)/2);
    //delay(10000);
  }




  @Override
    void display(float start_x, float start_y, float sizex, float sizey) {
    pushMatrix();
    for (float i=start_x; i< start_x+sizex; i+=0) {
      for (int x = 0; x<this.size_x; x++) {
        for (float j=start_y; j<start_y+sizey; j+=0) {
          for (int y= 0; y<this.size_y; y++) { 
            if (this.data[y][x] == 1) fill(255); 
            else if (this.data[y][x] == 2) fill(0, 255, 0); 
            else if (this.data[y][x] == 3) fill(255, 140, 0); 
            else if (this.data[y][x] == 4) fill(0, 0, 255); 
            else if (this.data[y][x] == 5) fill(255, 0, 0); 
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
