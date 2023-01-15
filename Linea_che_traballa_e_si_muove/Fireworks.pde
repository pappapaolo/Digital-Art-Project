/**
 * Bezier. 
 * 
 * The first two parameters for the bezier() function specify the 
 * first point in the curve and the last two parameters specify 
 * the last point. The middle parameters set the control points
 * that define the shape of the curve. 
 */

void setup() {
  size(640, 360); 
  stroke(255);
  noFill();
}

void draw() {
  background(0);
  for (int i = 0; i < 200; i += 20) {
    bezier(mouseX-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
  }
}
  colorMode(HSB);
  background(51);
}

void draw() {
  if (random(1) < 0.08) {
    fireworks.add(new Firework());
  }
  fill(51, 50);
  noStroke();
  rect(0,0,width,height);
  //background(255, 20);

  
  for (int i = fireworks.size()-1; i >= 0; i--) {
    Firework f = fireworks.get(i);
    f.run();
    if (f.done()) {
      fireworks.remove(i);
    }
  }
  
  
  
}
