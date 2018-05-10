class Ball {
  PVector pos;
  PVector velocity;
  float size = 48;

  Ball() {
    pos = new PVector(width/2, height/2);
    velocity = new PVector(2, 2.5);
  }

  void render() {
    fill(255);
    ellipse(pos.x, pos.y, size, size);
  }

  void move() {
    pos.add(velocity);
  }

  void bounce() {
    if ((pos.x + size/2) > width || (pos.x - size/2) < 0) {
      velocity.x *= -1;
    } else if ((pos.y + size/2) > height || (pos.y - size/2) < 0) {
      velocity.y *= -1;
    }
  }
}
