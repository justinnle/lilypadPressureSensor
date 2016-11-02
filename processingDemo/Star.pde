class Star extends ClickEffect{
  int r;

  int interval;

  boolean twinkle;
  float twinkleSpeed;
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
    initTwinkleSpeed();
  }

  void draw(){
    println(twinkleSpeed);
    if(twinkle){//fix twinkle
      c = color(red(c) + twinkleSpeed,
                green(c) + twinkleSpeed,
                blue(c) + twinkleSpeed);
      twinkleCount += 1;
      if(twinkleCount == twinkleCountMax){
        twinkleSpeed *= -1;
      } else if(twinkleCount == (twinkleCountMax * 2)){
        twinkleSpeed *= -1;
        twinkle = false;
        twinkleCount = 0;
        c = originalColor;
      }
    }
    fill(c);
    ellipse(x,y,r,r);
    if(timer > interval){
      twinkle = true;
      timer = 0;
    } else {
      if(!twinkle) {
        timer += 1;
      }
    }
  }

  void setInterval(int interval){this.interval = interval;}

  void twinkleCount(int twinkleCountMax){this.twinkleCountMax = twinkleCountMax;}

  void initTwinkleSpeed(){
    float max = (max(red(c), green(c), blue(c)));
    twinkleSpeed = (255 - max) / twinkleCountMax;
  }
}
