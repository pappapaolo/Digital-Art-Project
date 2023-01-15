float lineWidth;
float xoff = (0.01);
// Set the starting position of the line
int x;
float rgray;
int y;
int i;
int x1 = 250;
int y1 = 700;
float roy;
float rooy;
int ox;
int oy;
int oox;
int ooy;
  
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

void setup() {
  size(1200, 700);
  background(0);
  smooth();
  startTime = millis();
  print (height);
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
  // Set the starting and ending points of the curve
 /* float c1 = lastClick2[0];
  float v1 = lastClick2[1];
  float c2 = x1;
  float v2 = y1 - currentLength;*/
  // Draw the line
  stroke(rgray);
  strokeWeight(lineWidth);
  strokeCap(SQUARE);
  line(x1, y1, x1, y1 - currentLength);
  stroke(255);
  strokeWeight(1);
  strokeCap(ROUND);
  // curve(c1, c1, c1, v1, c2, v2, c2, c2);
  // If the animation has completed, stop drawing
  if (elapsedTime >= duration) {
  /*if (lineWidth > 25) {
      int rows = 10
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
    }*/
    smooth();
    stroke(255, 81, 0);
    noFill();
    xoff = xoff + 0.01;
    curve(ox, oy-100, ox, oy, x1, y2, x1, y2-100);
    curve(x1, y2-100, oox, ooy, x1, y2, oox, ooy-100);
    for (i = 0; i < 3; i++){
      stroke(255);
      point(random(0, width), random(0, 350));
    }
    animationRunning = false;
  }
}

// Start the animation when the mouse is pressed
void mousePressed() {
  x1 = mouseX;
  y2 = mouseY;
  
  // Set the width of the line
  lineWidth = random(5, 50);
  animationRunning = true;
  startTime = millis();
  oox = ox;
  ooy = oy;
  ox = x;
  oy = y;
  x = x1;
  y = y2;
  roy = (700 - noise(xoff) * (700 - oy));
  rooy = (700 - noise(xoff) * (700 - ooy));
  rgray = random(30, 80);
}
