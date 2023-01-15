// The building class

public class Building {
  float lineWidth;

  // Set the starting position of the line
  int x1;
  int y1 = 700;
  
  // Set the ending position of the line
  int y2 = 250;
  
  // Set the length of the line
  int lineLength = y1 - y2;
  
  // Set the animation duration in milliseconds
  int duration = 300;
  
  // Set the starting time
  long startTime;
  
  // Flag to keep track of whether the animation is running
  boolean animationRunning = false;
  
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
  
  // Start the animation when the mouse is pressed
  void mousePressed() {
    // Update the ending position of the line to the mouse coordinates
    x1 = mouseX;
    y2 = mouseY;
    // Set the width of the line
    lineWidth = random(5, 50);
    animationRunning = true;
    startTime = millis();
  }
}
