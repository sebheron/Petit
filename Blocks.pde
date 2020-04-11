// Platform is the same as image object however it uses a length times block width to determine its total width.
class Platform extends ImageObject {

  Platform (float _x, float _y, PImage _image, float _platformLength) {
    super(_x, _y, _platformLength * 64, 64, _image, _platformLength * 64, 64);
  }

  // Platforms are drawn as one image per each block it takes up.
  @Override
    void drawObject() {
    if (x > player.x - width/2 - halfWidth | x < player.x + width/2 + halfWidth) {
      int loops = round(w / 64);
      for (int i = 0; i < loops; i++) {
        image(objectImage, x - camera.x + (64 * i), y - camera.y, 64, h);
      }
    }
  }
}

// Box is the same as MultiImageObject, however it adds two new functions to determine the state of the box.
class Box extends MultiImageObject {

  Box (float _x, float _y, PImage _image, PImage[] _brokeImage) {
    super(_x, _y, 64, 64, _image, _brokeImage, 64, 64);
    frame = 0;
  }

  // If the box is broken a small animation will play where it'll switch image and turn on and off for 50 frames.
  @Override
    void drawObject() {
    if ((x > player.x - width/2 - halfWidth | x < player.x + width/2 + halfWidth) && frame % 5 < 2) {
      drawBox();
    }
    if (frame < 50 && !enabled) {
      frame++;
    } else if (!enabled) {
      breakBox();
      visible = false;
    }
  }
  
  // When the box is broken an acorn is created.
  // This could be achieved by replacing the box with the acorn, however this causes runtime issues as it cannot be disposed.
  void breakBox() {
    level.levelObjects[level.length] = new Collectable(x + 16, y + 16, 32, 32, acornSprites, 8, CollectableType.ACORN);
    level.length++;
  }

  // If the box is enabled draw its normal sprite, if not draw the broken sprite.
  void drawBox() {
    if (!enabled) {
      image(images[0], x - camera.x, y - camera.y, w, h);
    } else {
      image(objectImage, x - camera.x, y - camera.y, w, h);
    }
  }
}
