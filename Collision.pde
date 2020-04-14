int CheckCollisions(Object p1, Object p2) {
  // If the platform isn't enabled the player can pass through.
  if (!p2.enabled) { 
    return 0;
  }

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
          p1.y += overlapY;
          collision = TOP;
        } else {
          p1.y -= overlapY;
          collision = BOTTOM;
        }
      } else {
        if (distanceX > 0) {
          p1.x += overlapX;
          collision = LEFT;
        } else {
          p1.x -= overlapX;
          collision = RIGHT;
        }
      }
    }
  }

  return collision;
}
