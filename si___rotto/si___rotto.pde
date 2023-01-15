float lineWidth = random(10, 30);
// Set the starting position of the line
int x1 = 250;
int y1 = 700;

int[] lastClick1 = new int[2];
int[] lastClick2 = new int[2];
int[] lastClick3 = new int[2];
  
// Set the ending position of the line
int y2 = 250;

// Set the length of the line
int lineLength = y1 - y2;

// Set the animation duration in milliseconds
int duration = 1500;

// Set the starting time
long startTime;

// Flag to keep track of whether the animation is running
boolean animationRunning = false;

void setup() {
  size(1200, 700);
  smooth();
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

  // Draw the line
  stroke(255);
  strokeWeight(lineWidth);
  strokeCap(SQUARE);
  line(x1, y1, x1, y1 - currentLength);

  // If the animation has completed, stop drawing
  if (elapsedTime >= duration) {
    if (lineWidth > 25) {
      int rows = 10;
      int columns = 2;
      int windowWidth = 9;
      int windowHeight = 9;
      int gap = 4;
      // Set the starting position of the first window
      int x = 10;
      int y = 10;
      for (int i = 0; i < rows; i++) {
        for (int j = 0; j < columns; j++) {
          rect(x + j * (windowWidth + gap), y + i * (windowHeight + gap), windowWidth, windowHeight);
        }
      }
    }
    animationRunning = false;
  }
}

// Start the animation when the mouse is pressed
void mousePressed() {
  x1 = mouseX;
  y2 = mouseY;
  
  // Set the width of the line
  lineWidth = random(10, 40);
  animationRunning = true;
  startTime = millis();
  lastClick3[0] = lastClick2[0];
  lastClick3[1] = lastClick2[1];
  lastClick2[0] = lastClick1[0];
  lastClick2[1] = lastClick1[1];
  lastClick1[0] = x1;
  lastClick1[1] = y2;
}
