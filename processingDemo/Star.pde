class Star extends ClickEffect{
  int r;

  int interval;

  boolean twinkle;
  int twinkleSpeed;
  color originalColor;
  int twinkleCountMax;
  int twinkleCount;

  public Star(){}
  public Star(float x, float y, int r, color c){
    super(x,y,c);
    this.originalColor = c;
    this.r = r;
    timer = 0;
    twinkleCount = 0;
    twinkleCountMax = 10;
    interval = 50;
  }

  void draw(){
    if(twinkle && (twinkleCount < twinkleCountMax)){
      c = color(red(c) + twinkleSpeed,
                green(c) + twinkleSpeed,
                blue(c) + twinkleSpeed);
      twinkleCount += 1;
    } else if(twinkleCount > 0) {
      c = color(red(c) - twinkleSpeed,
                green(c) - twinkleSpeed,
                blue(c) - twinkleSpeed);
      twinkleCount -= 1;
    } else {
      twinkle = false;
    }
    fill(c);
    ellipse(x,y,r,r);
    if(timer > interval){
      twinkle = true;
      println("twinkle on");
    } else {
      timer += 1;
    }
  }

  void setInterval(int interval){this.interval = interval;}

  void twinkleCount(int twinkleCountMax){this.twinkleCountMax = twinkleCountMax;}

  void setTwinkleSpeed(){
    int max = (int)(max(red(c), green(c), blue(c)));
    twinkleSpeed = (255 - max) / twinkleCountMax;
  }
}
