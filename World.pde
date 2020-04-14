class World extends Object {

  List<Entity> entities;
  float camX, camY;
  Quadtree quadtree;

  World() {
    super(0, 0, width, height); 
    entities = new ArrayList<Entity>();
    quadtree = new Quadtree(1, new Rect(0, 0, width, height));
  }

  World(float _w, float _h) {
    super(0, 0, _w, _h);
    entities = new ArrayList<Entity>();
    quadtree = new Quadtree(1, new Rect(0, 0, _w, _h));
  }

  void addEntity(Entity e) {
    entities.add(e);
  }

  void update() {
    quadtree.clear();
    for (int i = 0; i < entities.size(); i++) {
      quadtree.insert(entities.get(i));
    }
    List returnObjects = new ArrayList();
    for (int i = 0; i < entities.size(); i++) {
      returnObjects.clear();
      quadtree.retrieve(returnObjects, quadtree.entities.get(i));

      for (int x = 0; x < returnObjects.size(); x++) {
        // Run collision detection algorithm between objects
      }
    }
  }

  void display() {
    for (Entity e : entities) {
      e.display(camX, camY);
    }
  }

  int CheckCollisions(Entity p1, Entity p2) {
    // Get the x and y distance between the objects.
    float distanceX = p1.x - p2.x;
    float distanceY = p1.y - p2.y;

    // Get the half widths combined and half heights combined.
    float bothHalfWidths = p1.collider.halfSize.x + p2.collider.halfSize.x;
    float bothHalfHeights = p1.collider.halfSize.y + p2.collider.halfSize.y;

    // Check if either the x and y overlap.
    if (abs(distanceX) < bothHalfWidths) {
      if (abs(distanceY) < bothHalfHeights) {
        float overlapX = bothHalfWidths - abs(distanceX);
        float overlapY = bothHalfHeights - abs(distanceY);

        // Perform checks to determine where collision occured.
        if (overlapX >= overlapY) {
          if (distanceY > 0) {
            p1.y += overlapY;
            return TOP;
          } else {
            p1.y -= overlapY;
            return BOTTOM;
          }
        } else {
          if (distanceX > 0) {
            p1.x += overlapX;
            return LEFT;
          } else {
            p1.x -= overlapX;
            return RIGHT;
          }
        }
      }
    }

    return 0;
  }
}

class Camera extends Object {

  World world;

  Camera(World _world) {
    super(0, 0, width, height); 
    world = _world;
  }

  Camera(float _vieww, float _viewh, World _world) {
    super(0, 0, _vieww, _viewh);
    world = _world;
  }

  void update(Object object) {
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

    world.camX = x;
    world.camY = Y;
  }

  void setWorld(World _world) {
    world = _world;
  }
}
