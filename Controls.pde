boolean KEY_UP, KEY_DOWN, KEY_LEFT, KEY_RIGHT;

void keyPressed() {
  if (key == 'w')
    KEY_UP = true;
  if (key == 's')
    KEY_DOWN = true;
  if (key == 'a')
    KEY_LEFT = true;
  if (key == 'd')
    KEY_RIGHT = true;
}

void keyReleased() {
  if (key == 'w')
    KEY_UP = false;
  if (key == 's')
    KEY_DOWN = false;
  if (key == 'a')
    KEY_LEFT = false;
  if (key == 'd')
    KEY_RIGHT = false;
}
