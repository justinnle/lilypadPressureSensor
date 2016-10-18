class MultiRipple extends ClickEffect{
  Ripple ripple;
  ArrayList<Ripple> ripples;
  int numRipples;
  int interval;

  MultiRipple(int numRipples, Ripple ripple) {
    this.numRipples = numRipples;
    this.ripple = ripple;
    ripples = new ArrayList<Ripple>();
    ripples.add(ripple);
    interval = (ripple.maxR-ripple.minR)/numRipples;
    timer = 0;
  }

  void draw() {
    if(!finished) {
      for(Ripple r : ripples) {
        if(!r.finished){
          r.setColor(color(red(r.c), green(r.c), blue(r.c), 255-(255*r.r/r.maxR)));
          r.draw();
        }
      }//eo for
      if((ripples.size() < numRipples) && (timer > interval)) {
        timer = 0;
        ripples.add(new Ripple(ripple.x,
                               ripple.y,
                               ripple.minR,
                               ripple.maxR,
                               ripple.c));
      } else if(ripples.size() == numRipples
                && ripples.get(ripples.size()-1).finished) {
        finished = true;
      } else {
        timer += 1;
      } //eo if/elseif/else
    } //eo if finished
  }
}
