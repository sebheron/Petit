void MoveCamera() {
  // Move the camera and cap it according to the player position and boundaries of the world respectively.
  camera.x = floor(player.x + (player.halfWidth) - (camera.w / 2));
  camera.y = floor(player.y + (player.halfHeight) - (camera.h / 2));

  if (camera.x < world.x) {
    camera.x = world.x;
  }
  if (camera.y < world.y) {
    camera.y = world.y;
  }
  if (camera.x + camera.w > world.x + world.w) {
    camera.x = world.x + world.w - camera.w;
  }
  if (camera.y + camera.h > world.h) {
    camera.y = world.h - camera.h;
  }
}

void DisplayBackground(PImage background, float z){
  // Display the background and move it according to z position.
  if (z == 0){
    image(background, 0, -camera.y + world.h / 2, width, world.h / 2); 
  }
  else {
    image(background, - camera.x * (1/z), - camera.y, world.w, world.h); 
  }
}
