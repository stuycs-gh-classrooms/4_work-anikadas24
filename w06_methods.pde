void logo (int cx, int cy) {
  fill(255, 10, 255);
  circle(cx, cy, 50);
  fill(123, 145, 153);
  circle(cx, cy, 25);
}

void setup () {
  size (100, 100);
  background (100, 100, 100);
  logo (50, 50);
}
