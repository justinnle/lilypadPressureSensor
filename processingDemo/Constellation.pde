class Constellation extends ClickEffect{
  ArrayList<Star> stars;
  int maxStars;

  boolean active;
  int delay;

  int currentStar;

  Constellation(){
    stars = new ArrayList<Star>();
  }

  Constellation(boolean active){
    this();
    this.active = active;
  }

  Constellation(boolean active, int delay){
    this(active);
    this.delay = delay;
  }

  void draw(){
    for(Star s : stars){
      s.draw();
    }
  }

  void setMaxStars(int maxStars){this.maxStars = maxStars;}
  void setActive(boolean active){this.active = active;}
}
