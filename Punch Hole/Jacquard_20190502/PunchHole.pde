class PunchHole {
  public boolean [][] data = new boolean[12][77];
  private int scale = 10;
  public int size_x = 77;
  public int size_y = 12;
  
  void acquisite_data(boolean []input) {
    int j0=0;
    int i0=0;
    //println(input.length);
    //if ((input.length) == 400) println("Size of input is wrong");
    for (int i=0; i<(input.length); i++) {
      this.data[i0][j0] = input[i];
      i0++;
      if (i0==12) {
        i0=0;
        j0++;
        //println(j0,i);
      }
    }
  }
  void display(int posx, int posy, int index) {
    ellipseMode(CENTER);
    fill(255);
    stroke(0);
    int offset = 100;
    int large_size = 25;
    int small_offset = 20;
    int small_size = 10;
    rect(posx, posy, this.size_x*scale+2*offset, this.size_y*scale);
    
    // Large round
    ellipse(posx+offset/2, posy+this.size_y*scale/2, large_size ,large_size );
    ellipse(posx+this.size_x*scale+2*offset-offset/2, posy+this.size_y*scale/2, large_size ,large_size );
    
    // Small round
    ellipse(posx+small_offset, posy+small_offset, small_size, small_size);
    ellipse(posx+small_offset, posy-small_offset+this.size_y*scale, small_size, small_size);
    ellipse(posx+this.size_x*scale+2*offset-small_offset, posy-small_offset+this.size_y*scale, small_size, small_size);
    ellipse(posx+this.size_x*scale+2*offset-small_offset, posy+small_offset, small_size, small_size);
    
    fill(0);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(index, posx-offset/2, posy+this.size_y*scale/2);
    
    noStroke();
    stroke(0);
    for (int j=0; j< this.size_x; j++) {
      for (int i=0; i< this.size_y; i++) {
        if (this.data[i][j] == true)
          fill(0); 
        else fill(255);
        //stroke(0,255,0);
        ellipse(posx+offset+scale/2+j*scale, posy+scale/2+i*scale, scale-2, scale-2);
      }
    }
  }
}
