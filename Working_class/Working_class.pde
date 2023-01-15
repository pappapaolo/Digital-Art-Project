GrowingLine line;

void setup() {
  size(1200, 700);
  background(0);
  smooth();
  line = new GrowingLine(300);
}

void draw() {
  line.draw();
}

// Start the animation when the mouse is pressed
void mousePressed() {
  // Update the ending position of the line to the mouse coordinates
  line.x1 = mouseX;
  line.y2 = mouseY;
  // Set the width of the line
  line.lineWidth = random(5, 50);
  line.start();
}
