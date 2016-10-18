class AirBrush extends Ripple {

  int hardness;

  AirBrush() {}

  AirBrush(float x, float y, int maxR, int hardness, color c) {
    super(x, y, 0, maxR, c);
    this.hardness = hardness;
  }

  void draw() {
    if(r < maxR){
      noStroke();
      fill(c);
      ellipse(x, y, r, r);
      r += speed;
      c = color(red(c), green(c), blue(c), hardness);
    }
  }
}
