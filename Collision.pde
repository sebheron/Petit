int CheckCollisions(Player p1, Object p2) {
  // If the platform isn't enabled the player can pass through.
  if (!p2.enabled) { return 0; }
  
  // Set the collision to none.
  int collision = 0;

  // Get the x and y distance between the player and the object.
  float distanceX = (p1.x + p1.w/2) - (p2.x + p2.w/2);
  float distanceY = (p1.y + p1.h/2) - (p2.y + p2.h/2);

  // Get the half widths combined and half heights combined.
  float bothHalfWidths = p1.halfWidth + p2.halfWidth;
  float bothHalfHeights = p1.halfHeight + p2.halfHeight;

  // Check if either the x and y overlap.
  if (abs(distanceX) < bothHalfWidths) {
    if (abs(distanceY) < bothHalfHeights) {
      float overlapX = bothHalfWidths - abs(distanceX);
      float overlapY = bothHalfHeights - abs(distanceY);
      
      // Perform checks to determine where collision occured.
      if (overlapX >= overlapY) {
        if (distanceY > 0) {
          if (p2 instanceof Collectable){
            CollectCollectable((Collectable)p2);
          } else {
            p1.y += overlapY;
            collision = TOP;
          }
        } else {
          if (p2 instanceof Box){
            p1.jump(breakAudio, p1.jumpForce / 2);
            p2.enabled = false;
          } else if (p2 instanceof Collectable){
            CollectCollectable((Collectable)p2);
          } else {
            p1.y -= overlapY;
            collision = BOTTOM;
          }
        }
      } else {
        if (distanceX > 0) {
          if (p2 instanceof Collectable){
            CollectCollectable((Collectable)p2);
          } else {
            p1.x += overlapX;
            collision = LEFT;
          }
        } else {
          if (p2 instanceof Collectable){
            CollectCollectable((Collectable)p2);
          } else {
            p1.x -= overlapX;
            collision = RIGHT;
          }
        }
      }
    }
  }
  
  return collision;
}

void CollectCollectable(Collectable collectable) {
  // If collectable is acorn, add 100 to score, add 1 to acorn count and play collectable sound.
  if (collectable.typeOf == CollectableType.ACORN){
    collectAudio.rewind();
    collectAudio.play();
  // If collectable is page, add 200 to score, move to the next level and play level complete sound.
  // If all levels have been complete then reset level count and play win scene.
  } else if (collectable.typeOf == CollectableType.PAGE){
    levelIndex++;
    if (levelIndex >= levels.length){
      levelIndex = 0;
      level.loadLevel(levels[levelIndex]);
      levelCompleteAudio.rewind();
      levelCompleteAudio.play();
    } else {
      level.loadLevel(levels[levelIndex]);
      levelCompleteAudio.rewind();
      levelCompleteAudio.play();
    }
  }
  // Disable collectable.
  collectable.enabled = false;
  collectable.visible = false;
}
