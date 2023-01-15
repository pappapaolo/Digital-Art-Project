float lineWidth;
// Set the starting position of the line
int x, y, ox, oy, oox, ooy, blue = 0, red = 0, green = 0, count = 0;
float rgray, a, b, c, r, g, bb;
int x1 = 250;
int y1 = 700;
long lastAnimTime;
  
// Set the ending position of the line
int y2 = 250;

// Set the length of the line
int lineLength = y1 - y2;

// Set the animation duration in milliseconds
float duration = random(100, 2200);

// Set the starting time
long startTime;

// Flag to keep track of whether the animation is running
boolean animationRunning = false;

void setup() {
  size(1200, 700);
  background(0, 0, blue);
  smooth();
  ox = 300;
  oox = 900;
  oy = 700;
  ooy = 700;
  y = 700;
  startTime = millis();
  lines = new ArrayList<Line>();
  stars = new ArrayList<Star>();
}

void draw() {
  // Calculate the elapsed time
  float elapsedTime = millis() - startTime;

  // Calculate the fraction of the animation that has completed
  float t = elapsedTime / duration;

  // Use the fraction to calculate the current length of the line
  int currentLength = (int) (t * (y1 - y2));
  // Set the starting and ending points of the curve
  // Draw the line

  background(red, green, blue); //<>//
  for (Star star : stars) {
    star.draw();
  }
  for (Line line : lines) {
    line.draw();
  }
  strokeWeight(1);
  strokeCap(ROUND);
  // stroke(255, 81, 0);
  stroke(r, g, bb);
  noFill();
  curve(ox, oy-300, ox, oy, (x1 - lineWidth/2), y1 - currentLength, (x1 - lineWidth/2), y2-300);
  curve(oox, ooy-300, oox, ooy, (x1 + lineWidth/2), y1 - currentLength, (x1 + lineWidth/2), y2-300);
  stroke(rgray);
  strokeWeight(lineWidth);
  strokeCap(SQUARE);
  line(x1, y1, x1, y1 - currentLength);
  count++;
  if (count % 15 == 0) {
    strokeCap(ROUND);
    stroke(255);
    strokeWeight(c);
    point(a, b);
    Star star = new Star(a, b, c);
    stars.add(star);
    a = random(0, 1200);
    b = random(0, (int) random(0, 700));
    c = random(1, 3);
    strokeWeight(c);
    point(a, b);
  }
  
  // If the animation has completed, stop drawing
  if (elapsedTime >= (duration)) {
    animationRunning = false;
    duration = random(400, 1200);
    Line line = new Line(lineWidth, rgray, x1, y1, y2, ox, oy, oox, ooy, r, g, bb);
    lines.add(line);
    x1 = (int) random(0, width);
    y2 = (int) random(0, height);
    // Set the width of the line
    lineWidth = random(5, 15);
    animationRunning = true;
    startTime = millis();
    oox = ox;
    ooy = oy;
    ox = x;
    oy = y;
    x = x1; //<>//
    y = y2;
    rgray = random(30, 160);
    a = random(0, 1200); //<>//
    b = random(0, 400);
    c = random(1, 3);
    r = random(100, 255);
    g = random(0, 200); //<>//
    bb = random(0, 220);
    if (blue < 250) {
      blue = blue + 3;
    }
    if (red < 220) {
      red = red + 1;
      green = green + 1;
    }
    if (blue >= 200) {
      if (red < 220) {
        red = red + 1;
        green = green +2;
      }
    }
  }
}
