public class Life {
  private int myRow, myCol;
  private float x, y, width, height;
  private boolean alive;

  public Life (int row, int col) {
    width = 400/num_cols;
    height = 400/num_rows;
    myRow = row;
    myCol = col;
    x = myCol*width;
    y = myRow*height;
    alive = Math.random() < .5; 
    Interactive.add( this ); 
  }

  // called by manager
  public void mousePressed () {
    alive = !alive; 
  }
  public void draw () {
    fill(alive ? 200 : 100);
    rect(x, y, width, height);
  }
  public boolean getLife() {
    return alive;
  }
  public void setLife(boolean living) {
    alive = living;
  }
}
