ArrayList<ClickEffect> ripples;
int rippleSize;

void setup(){
  size(640,480);
  ripples = new ArrayList<ClickEffect>();
  rippleSize = 150;
}
void draw() {
  background(255,255,255);
  for(int ii=0;ii<ripples.size();ii++) {
    if (ripples.get(ii).finished) {
      ripples.remove(ii);
    } else {
      ripples.get(ii).draw();
    }
  }
}

void mousePressed(){
  //ripples.add(new Ripple(mouseX, mouseY, 0, rippleSize, 0));
  ripples.add(new MultiRipple(mouseX, mouseY, 0, rippleSize, 0, 3));
}

void mouseDragged(){

}