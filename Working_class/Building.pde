class GrowingLine {
  float lineWidth;
  // Set the starting position of the line
  int x1 = 250;
  int y1 = 700;
  // Set the ending position of the line
  int y2 = 250;
  // Set the length of the line
  int lineLength = y1 - y2;
  // Set the animation duration in milliseconds
  int duration;
  // Set the starting time
  long startTime;
  // Flag to keep track of whether the animation is running
  boolean animationRunning = false;
  
  GrowingLine(int duration) {
    this.duration = duration;
  }
  
  void start() {
    animationRunning = true;
    startTime = millis();
  }
  
  void draw() {
    // If the animation is not running, do not draw the line
    if (!animationRunning) {
      return;
    }
    // Calculate the elapsed time
    float elapsedTime = millis() - startTime;

    // Calculate the fraction of the animation that has completed
    float t = elapsedTime / duration;

    // Use the fraction to calculate the current length of the line
    int currentLength = (int) (t * (y1 - y2));
    // Set the starting and ending points of the line
    int x = x1;
    int y = y1 - currentLength;
    // Draw the line
    stroke(255);
    strokeWeight(lineWidth);
    strokeCap(SQUARE);
    line(x1, y1, x, y);
    // If the animation has completed, stop drawing
    if (elapsedTime >= duration) {
      animationRunning = false;
    }
  }
}
