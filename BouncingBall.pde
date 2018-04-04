float circleX = 0;
float circleY = 240;
float xSpeed = 2;
float ySpeed = 2;

void setup() {
  size(640, 480);
}

void draw() {
  background(0);
  ellipse(circleX, circleY, 25, 25);
  circleX += xSpeed;
  circleY += ySpeed;
  if (circleY > height || circleY < 0) {
    xSpeed *= 1;
    ySpeed *= -1;
  } else if (circleX > width || circleX < 0) {
    ySpeed *= 1;
    xSpeed *= -1;
  }
}
