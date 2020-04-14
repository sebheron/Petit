class Entity extends Object {
  UUID id;
  private List<EntityComponent> components;

  SpriteSheet spritesheet;
  Physicsbody physicsbody;
  Collider collider;

  Entity(float _x, float _y, float _w, float _h, SpriteSheet _spritesheet) {
    super(_x, _y, _w, _h);
    spritesheet = _spritesheet;
    id = UUID.randomUUID();
    components = new ArrayList<EntityComponent>();
  }

  void addComponent(EntityComponent eC) {
    eC.entity = this;
    components.add(eC);
    if (eC instanceof Physicsbody) {
      physicsbody = (Physicsbody)eC;
    } else if (eC instanceof Collider){
      collider = (Collider)eC; 
    }
  }

  void removeComponent(int index) {
    if (components.get(index) instanceof Physicsbody) {
      physicsbody = null;
    }
    components.remove(index);
  }

  void removeComponent(EntityComponent eC) {
    components.remove(eC);
    if (eC instanceof Physicsbody) {
      physicsbody = null;
    }
  }

  EntityComponent getComponent(Class type) {
    for (EntityComponent eC : components) {
      if (type.isInstance(eC)) {
        return eC;
      }
    }
    return null;
  }

  void display(String title) {
    spritesheet.drawSprite(title, x, y, w, h);
  }

  void display(int index) {
    spritesheet.drawSprite(index, x, y, w, h);
  }

  void update() {
    for (EntityComponent eC : components) {
      eC.update();
    }
  }

  PVector getVelocity() {
    if (physicsbody != null) {
      return physicsbody.velocity.copy();
    }
    return new PVector();
  }

  /*
  boolean Intersects(Entity e) {
   if (collider == null || e.collider == null){
   return false;
   }
   
   PVector max = new PVector(x + w + (-0.5 * w), y + h + (-0.5 * w));
   PVector rMax = new PVector(e.x + e.w + (-0.5 * e.w), e.y + e.h + (-0.5 * e.h));
   
   if (max.x < e.x + (-0.5 * e.w) | x + (-0.5 * w) > rMax.x) {
   return false;
   }
   if (max.y < e.y + (-0.5 * e.w) | y + (-0.5 * w) > rMax.y) {
   return false;
   }
   return true;
   }*/

  int CheckCollisions(Entity p2) {
    // Get the x and y distance between the objects.
    float distanceX = x - p2.x;
    float distanceY = y - p2.y;

    // Get the half widths combined and half heights combined.
    float bothHalfWidths = collider.halfSize.x + p2.collider.halfSize.x;
    float bothHalfHeights = collider.halfSize.y + p2.collider.halfSize.y;

    // Check if either the x and y overlap.
    if (abs(distanceX) < bothHalfWidths) {
      if (abs(distanceY) < bothHalfHeights) {
        float overlapX = bothHalfWidths - abs(distanceX);
        float overlapY = bothHalfHeights - abs(distanceY);

        // Perform checks to determine where collision occured.
        if (overlapX >= overlapY) {
          if (distanceY > 0) {
            y += overlapY;
            return TOP;
          } else {
            y -= overlapY;
            return BOTTOM;
          }
        } else {
          if (distanceX > 0) {
            x += overlapX;
            return LEFT;
          } else {
            x -= overlapX;
            return RIGHT;
          }
        }
      }
    }

    return 0;
  }
}
