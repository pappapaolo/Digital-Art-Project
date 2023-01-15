float xoff = 0.0;
void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  xoff = xoff + 0.01;
  float n = noise(xoff) * width;
  // Define the three points through which the curve will pass
  float x1 = 100;
  float y1 = 100;
  float x2 = 200;
  float y2 = 300;
  float x3 = 300;
  float y3 = 100;

  // Set the stroke weight and color
  strokeWeight(5);
  stroke(0);

  // Draw the curve using the curve() function
  bezier(x1, y1, n, y2, x3, y3, x3, y3);
}
