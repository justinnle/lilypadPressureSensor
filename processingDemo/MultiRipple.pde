class MultiRipple{
  int numRipples;
  int[] radii;

  int numToDraw;
  int interval;

  MultiRipple(float x, float y, int minR, int maxR, color c, int numRipples){
    this.numRipples = numRipples;
    interval = (maxR-minR)/numRipples;
    numToDraw = 1;
    radii = new int[numRipples];
  }

  void draw(){
    if (radii[numRipples-1] < maxR){ //if last ripple has reached max
      noFill();
      stroke(c);
      for(int ii = 0; ii < numToDraw;ii++){
        c = color(red(c), green(c), blue(c), 255-(255*radii[ii]/maxR));
        ellipse(x, y, radii[ii], radii[ii]);
        radii[ii] += speed;
        if(timer>interval){
          numToDraw++;
          timer = 0;
        }
      }//eofor
      if(numToDraw < numRipples){
        timer += 1;
      }
    } else {
      finished = true;
    }
  }

}
