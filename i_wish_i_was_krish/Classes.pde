class Line {
  float lineWidth;
  float rgray, r, g, bb;
  int x1, y1, y2, ox, oy, oox, ooy;
  
  Line(float lineWidth, float rgray, int x1, int y1, int y2, int ox, int oy, int oox, int ooy, float r, float g, float bb) {
    this.lineWidth = lineWidth;
    this.rgray = rgray;
    this.x1 = x1;
    this.y1 = y1;
    this.y2 = y2;
    this.ox = ox;
    this.oy = oy;
    this.oox = oox;
    this.ooy = ooy;
    this.r = r;
    this.g = g;
    this.bb = bb;
  }
  
  void draw() {
    strokeWeight(1);
    //stroke(255, 81, 0);
    stroke(255);
    noFill();
    curve(ox, oy-300, ox, oy, (x1 - lineWidth/2), y2, (x1 - lineWidth/2), y2-300);
    curve(oox, ooy-300, oox, ooy, (x1 + lineWidth/2), y2, (x1 + lineWidth/2), y2-300);
    stroke(255);
    strokeWeight(lineWidth);
    strokeCap(SQUARE);
    line(x1, y1, x1, y2);
  }
}
class Star {
  float a, b, c;
  Star (float a, float b, float c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }
  
  void draw() {
    strokeCap(ROUND);
    stroke(255);
    strokeWeight(c);
    point(a, b);
  }
}
ArrayList<Line> lines;
ArrayList<Star> stars;
