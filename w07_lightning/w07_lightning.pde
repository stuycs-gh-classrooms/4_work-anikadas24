
void setup() {
  size(500, 500);
  int strike = 5;
  
  while (strike > 0) {
    int x = int(random(width));
    int y = int(random(height/2, height));
    drawLightning(x, y, strike);
    
    strike = strike - 1;
  }//target drawingg
}//setup


void drawLightning(int x, int y, int numParts) {
  int nextx = int(random(x-5, x+5));
  int nexty = int(y+(height/numParts));
  line(x, y, nextx, nexty);
}
