void setup() {
  size(1200, 800);
}

void draw() {
  background(255);

  // Calculate the distance between the center of the window and the current mouse position
  float d = dist(width/2, height/2, mouseX, mouseY);

  // Draw the line from the center of the window to the current mouse position
  stroke(10);
  line(mouseX, height, mouseX, mouseY);

  // Display the distance between the center and the mouse position
  fill(0);
  text("Distance: " + d, 10, 20);
}
