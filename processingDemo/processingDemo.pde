ArrayList<ClickEffect> effects;
int effectSize;

void setup(){
  size(640,480);
  effects = new ArrayList<ClickEffect>();
  effectSize = 150;
}
void draw() {
  background(255,255,255);
  for(int ii=0;ii<effects.size();ii++) {
    if (effects.get(ii).finished) {
      effects.remove(ii);
    } else {
      effects.get(ii).draw();
    }
  }
}

void mousePressed(){
  //ripples.add(new Ripple(mouseX, mouseY, 0, rippleSize, 0));
  effects.add(new MultiRipple(3, new Ripple(mouseX, mouseY, 0, effectSize, 0)));
}

void mouseDragged(){

}
