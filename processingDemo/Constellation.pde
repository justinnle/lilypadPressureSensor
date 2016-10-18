class Constellation extends ClickEffect{
  ArrayList<Star> stars;
  int maxStars;

  boolean active;
  int delay;

  Constellation(){}

  Constellation(boolean active){
    this.active = active;
  }

  Constellation(boolean active, int delay){
    this.active = active;
  }

  void draw(){

  }

  void setMaxStars(int maxStars){this.maxStars = maxStars;}
  void setActive(boolean active){this.active = active;}
}
