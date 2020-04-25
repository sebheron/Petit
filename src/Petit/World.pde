PVector GRAVITY = new PVector(0, 0.8);
float FRICTION = 0.9;

PVector ZERO = new PVector(0, 0);

class World extends Object {

  List<Entity> entities;
  PVector cam;

  World() {
    super(0, 0, width, height); 
    entities = new ArrayList<Entity>();
    cam = ZERO.copy();
  }

  World(float _w, float _h) {
    super(0, 0, _w, _h);
    entities = new ArrayList<Entity>();
    cam = ZERO.copy();
  }

  void addEntity(Entity e) {
    entities.add(e);
  }

  void update() {
    for (Entity e1 : entities) {
      e1.update();
      for (Entity e2 : entities) {
        if (e1.id != e2.id) {
          checkCollisions(e1, e2);
        }
      }
    }
  }

  void display() {
    for (Entity e : entities) {
      e.display(cam);
    }
  }

  void checkCollisions(Entity e1, Entity e2) {
    if (!e1.enabled || e1.collider == null || !e1.collider.enabled
      || !e2.enabled || e2.collider == null || !e2.collider.enabled
      || !e1.collider.collisionOn
      || (e1.physicsbody != null && e1.physicsbody.locked)
      || (e1.mask != null && !e1.mask.contains(e2.collider.layer))
      || (e2.mask != null && !e2.mask.contains(e1.collider.layer))) {
      return;
    }

    // Get the x and y distance between the objects.
    float distanceX = e1.position.x - e2.position.x;
    float distanceY = e1.position.y - e2.position.y;

    // Get the half widths combined and half heights combined.
    float bothHalfWidths = e1.collider.halfSize.x + e2.collider.halfSize.x;
    float bothHalfHeights = e1.collider.halfSize.y + e2.collider.halfSize.y;

    float bothMaterials = e1.collider.material + e2.collider.material;

    // Check if either the x and y overlap.
    if (abs(distanceX) < bothHalfWidths) {
      if (abs(distanceY) < bothHalfHeights) {
        float overlapX = bothHalfWidths - abs(distanceX);
        float overlapY = bothHalfHeights - abs(distanceY);

        // Perform checks to determine where collision occured.
        if (overlapX >= overlapY) {
          if (distanceY > 0) {
            if (e1.physicsbody != null) {
              e1.position.y += overlapY * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.y < 0)
                e1.physicsbody.velocity.y = -e1.physicsbody.velocity.y * bothMaterials;
            }
            e1.collider.collisions.top = true;
          } else {
            if (e1.physicsbody != null) {
              e1.position.y -= overlapY * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.y > 0)
                e1.physicsbody.velocity.y = -e1.physicsbody.velocity.y * bothMaterials;
            }
            e1.collider.collisions.bottom = true;
          }
        } else {
          if (distanceX > 0) {
            if (e1.physicsbody != null) {
              e1.position.x += overlapX * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.x < 0)
                e1.physicsbody.velocity.x = -e1.physicsbody.velocity.x * bothMaterials;
            }
            e1.collider.collisions.left = true;
          } else {
            if (e1.physicsbody != null) {
              e1.position.x -= overlapX * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.x > 0)
                e1.physicsbody.velocity.x = -e1.physicsbody.velocity.x * bothMaterials;
            }
            e1.collider.collisions.right = true;
          }
        }
      }
    }
  }
}

class Camera extends Object {

  World world;

  Camera(World _world) {
    super(0, 0, width, height); 
    world = _world;
  }

  void update(Object object) {
    position.set(floor(object.position.x + (object.halfSize.x) - (size.x / 2)), floor(object.position.y + (object.halfSize.y) - (size.y / 2)));

    if (position.x < world.position.x) {
      position.x = world.position.x;
    }
    if (position.y < world.position.y) {
      position.y = world.position.y;
    }
    if (position.x + size.x > world.position.x + world.size.x) {
      position.x = world.position.x + world.size.x - size.x;
    }
    if (position.y + size.y > world.size.y) {
      position.y = world.size.y - size.y;
    }

    world.cam.set(position);
  }

  void setWorld(World _world) {
    world = _world;
  }
}
