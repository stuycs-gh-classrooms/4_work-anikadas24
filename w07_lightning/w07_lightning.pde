void drawLightning(int x, int y, int numParts) {
  int nexty = y + height/numParts;
  int nextx = int(random(x-5, x+6));
  
  while (numParts > 0) {
    line(x, y, nextx, nexty);
    nextx = int(random(x-5, x+4));
    y = nexty + height/numParts;
    numParts = numParts - 1;
  }
}

void setup() {
  size(500, 500);
  drawLightning (200, 0, 5);
  drawLightning (345, 0, 4);
  drawLightning (123, 0, 6);
  drawLightning (255, 0, 7);
  drawLightning (167, 0, 8);
}
