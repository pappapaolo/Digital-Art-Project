//Stickman
/*
 Politecnico di Milano, Digital Art 2022/2023
 Teacher assistant: Giulio Interlandi 
 */

void setup() {
  size(200, 200);
  background(255);
}

void draw() {
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(100, 160, 230); //body color
  rect(100, 80, 20, 120); //body
  fill(100, 200, 40); //sripes color
  rect(100, 70, 20, 1); //body 
  rect(100, 80, 20, 1); //body 
  rect(100, 90, 20, 1); //body 
  rect(100, 100, 20, 1); //body 
  rect(100, 110, 20, 1); //body 
  rect(100, 120, 20, 1); //body 
  rect(100, 130, 20, 1); //body 
  rect(100, 140, 20, 1); //body 
  fill(255); //head color
  ellipse(100, 40, 60, 60); //head
  fill(10); //eyes color
  ellipse(87, 42, 18, 32); //1st eye
  ellipse(113, 42, 18, 32); //2nd eye
  fill(255);
  ellipse(85, 46, 12, 12); //1st eye reflection
  ellipse(111, 46, 12, 12); //2nd eye reflection
  ellipse(90, 37, 8, 8); //1st eye reflection
  ellipse(116, 37, 8, 8); //2nd eye reflection
  stroke(5); //legs color
  line(90, 140, 80, 190); //1st leg
  line(110, 140, 120, 190); //2nd leg
}
