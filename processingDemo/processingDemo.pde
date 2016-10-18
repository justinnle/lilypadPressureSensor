ArrayList<ClickEffect> effects;
int effectSize;

void setup() {
  size(640,480);
  effects = new ArrayList<ClickEffect>();
  effectSize = 150;
}
void draw() {
  //background(255,255,255);
  for(int ii=0;ii<effects.size();ii++) {
    if (effects.get(ii).finished) {
      effects.remove(ii);
    } else {
      effects.get(ii).draw();
    }
  }
}

void mousePressed() {
  // effects.add(new Ripple(mouseX, mouseY, 0, effectSize, 0));
  // effects.add(new AirBrush(mouseX, mouseY, effectSize, 10, color(100, 150, 200)));
  // effects.add(new MultiRipple(5, new Ripple(mouseX, mouseY, 0, effectSize, 0)));
  effects.add(new Star(mouseX, mouseY, 15, color(25,160,220)));
}

void mouseDragged() {

}
