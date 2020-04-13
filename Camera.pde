class Camera extends Object {
  
  Camera(){
    super(0, 0, width, height); 
  }
  
  Camera(float _vieww, float _viewh) {
    super(0, 0, _vieww, _viewh);
  }

  void update(Object object) {
    // Move the camera and cap it according to the player position and boundaries of the world respectively.
    x = floor(object.x + (object.halfWidth) - (w / 2));
    y = floor(object.y + (object.halfHeight) - (h / 2));

    if (x < world.x) {
      x = world.x;
    }
    if (y < world.y) {
      y = world.y;
    }
    if (x + w > world.x + world.w) {
      x = world.x + world.w - w;
    }
    if (y + h > world.h) {
      y = world.h - h;
    }
  }
}

void DisplayBackground(PImage background, float z) {
  // Display the background and move it according to z position.
  if (z == 0) {
    image(background, 0, -view.y + world.h / 2, width, world.h / 2);
  } else {
    image(background, - view.x * (1/z), - view.y, world.w, world.h);
  }
}
