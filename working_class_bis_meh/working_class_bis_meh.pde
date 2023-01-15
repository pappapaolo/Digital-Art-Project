ArrayList<Building> lines = new ArrayList<Building>();

void setup() {
  size(1200, 700);
  background(0);
}

void draw() {
  for (int i = 0; i < lines.size(); i++) {
    Building line = lines.get(i);
    line.draw();
  }
}

// Start the animation when the mouse is pressed
void mousePressed() {
  Building line = new Building(300);
  // Update the ending position of the line to the mouse coordinates
  line.x1 = mouseX;
  line.y2 = mouseY;
  // Set the width of the line
  line.lineWidth = random(5, 50);
  line.start();
  lines.add(line);
}
