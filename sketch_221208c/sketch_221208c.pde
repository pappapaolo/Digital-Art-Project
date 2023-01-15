// Set the width of the line
int lineWidth = 3;

// Set the starting position of the line
int x1 = 250;
int y1 = 500;

// Set the ending position of the line
int x2 = x1;
int y2 = 250;

// Set the length of the line
int lineLength = y1 - y2;

// Set the animation duration in milliseconds
int duration = lineLength * 4;

// Set the starting time
long startTime;

void setup() {
  size(500, 500);
  smooth();
  startTime = millis();
}

void draw() {
  // Calculate the elapsed time
  float elapsedTime = millis() - startTime;

  // Calculate the fraction of the animation that has completed
  float t = elapsedTime / duration;

  // Use the fraction to calculate the current length of the line
  int currentLength = (int) (t * lineLength);

  // Draw the line
  stroke(0);
  strokeWeight(lineWidth);
  line(x1, y1, x1, y1 - currentLength);

  // If the animation has completed, stop drawing
  if (elapsedTime >= duration) {
    noLoop();
  }
}
