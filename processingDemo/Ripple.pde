class Ripple extends ClickEffect{
  int minR;
  int r;
  int maxR;
  int speed;

  Ripple(float x, float y, int minR, int maxR, color c){
    this.x = x;
    this.y = y;
    this.minR = minR;
    r = minR;
    this.maxR = maxR;
    speed = 1;
    this.c = c;
    finished = false;
  }

  void draw(){
    if (r < maxR){
      noFill();
      stroke(c);
      ellipse(x, y, r, r);
      r += speed;
      c = color(red(c), green(c), blue(c), 255-(255*r/maxR));
    } else{
      finished = true;
    }
  }//eodraw

  void setSpeed(int speed){
    this.speed = speed;
  }
  void setColor(color c){
    this.c = c;
  }

}
