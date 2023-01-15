float n;
void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  strokeWeight(5);
  stroke(0);
  for (n = height; n > mouseY; n--)
  {
    line(mouseX, height, mouseX, n);
  }
}
