Building building;
void setup() {
  size(1200, 700);
  background(0);
  smooth();
  building = new Building();
}

void draw() {
  // If the animation is not running, do not draw the line
  Building.run;
}
