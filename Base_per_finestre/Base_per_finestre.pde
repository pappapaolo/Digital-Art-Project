// Set the number of rows and columns
int rows = 10;
int columns = 2;

size (800, 400);

// Set the size of each window
int windowWidth = 9;
int windowHeight = 9;

// Set the gap between windows
int gap = 4;

// Set the starting position of the first window
int x = 10;
int y = 10;

// Use a for loop to draw the windows
for (int i = 0; i < rows; i++) {
  for (int j = 0; j < columns; j++) {
    rect(x + j * (windowWidth + gap), y + i * (windowHeight + gap), windowWidth, windowHeight);
  }
}
