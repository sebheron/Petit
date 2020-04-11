boolean left, right, up, down;

// If key is released set the particular key released to false.
void keyReleased() {
  if (key == CODED && !loading) {
    if (keyCode == LEFT) {
      left = false;
    }
    if (keyCode == RIGHT) {
      right = false;
    }
    if (keyCode == UP) {
      up = false;
    }
    if (keyCode == DOWN) {
      down = false;
    }
  }
}

// If key is pressed set the particular key pressed to true.
void keyPressed() {
  if (key == CODED && !loading) {
    if (keyCode == LEFT) {
      left = true;
    }
    if (keyCode == RIGHT) {
      right = true;
    }
    if (keyCode == UP) {
      up = true;
    }
    if (keyCode == DOWN) {
      down = true;
    }
  }
}
