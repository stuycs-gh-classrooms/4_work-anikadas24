int radius;
int lineCount;
int circleCount;

void setup() {
  size(600, 400);
  
  lineCount = 5;
  drawGrid(lineCount);
  
  circleCount = 6;
  radius = 25;
  circleRow(radius, height/2, circleCount, radius*2);
}//setup

void drawGrid(int numLines) {
  int count = 0;
  int spacingX = width/(numLines+1);
  int spacingY = height/(numLines+1);
  int y = spacingY;
  for (int x = spacingX; count < numLines; x+= spacingX, y+= spacingY; count++;) {
    line(x, 0, x, height);
    line(0, y, width, y);
  }//while 
  
}//drawGrid



void circleRow(int startX, int startY, int numCircles, int d) {
  for (int count = 0; count < numCircles; count++, startX+= d) {
    circle(startX, startY, d);
    startX+= d;
  }//while
}//circleRow
