float t = 100, T = 1, H = 100;
void setup() {
  size(640, 480);
  noStroke();
  fill(0);
}
void draw() {
  background(255);
  drawMabataki(width/4, height/4, f1(t));
  drawMabataki(width/4*3, height/4, f2(t));
  circle(width/2, height/2, 10);
  rect(width/4, height/4*3, width/2, 10);
  t+=(1/frameRate)*(1/0.1);
}
void drawMabataki(float x, float y, float returned) {
  rect(x-H, y-H/2-10, H*2, 10);
  rect(x-H, y+H/2, H*2, 10);
  if (t > T || t < 0) return;
  rect(x-H, y-H/2, H*2, H-returned);
}
void mousePressed() {
  t = 0.0;
}
float f1(float t) {
  return H * abs(sin(PI * t / T - PI / 2));
}
float f2(float t) {
  return H - H * sin(PI * t / T);
}
