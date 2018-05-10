float circleX = 0;
float circleY = 240;
Ball b;

void setup() {
  size(640, 480);
  b = new Ball();
}

void draw() {
  background(0);
  b.move();
  b.bounce();
  b.render();
}
