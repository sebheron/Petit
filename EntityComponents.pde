abstract class EntityComponent {
  UUID id;
  Entity entity;
  boolean enabled;

  EntityComponent() {
    id = UUID.randomUUID();
    enabled = true;
  }

  void enable() {
    enabled = true;
  }

  void disable() {
    enabled = false;
  }

  abstract void update();
}

class Physicsbody extends EntityComponent {
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  float drag = 10;
  boolean locked, grounded;
  boolean awakeX, awakeY;

  Physicsbody() {
    super();
  }

  Physicsbody(float _drag, boolean _locked) {
    super();
    drag = _drag;
    locked = _locked;
  }

  void update() {
    if (!locked) {
      velocity.add(acceleration);
      entity.x += velocity.x;
      entity.y += velocity.y;
      velocity.mult(1/drag);
      
      velocity.x *= 0.9;
      velocity.y += 0.8;
      if (abs(velocity.y) < 0.01) {
        velocity.y = 0;
      }
      if (abs(velocity.x) < 0.01) {
        velocity.x = 0;
      }
    }
    acceleration = new PVector();
  }

  void addForce(PVector force) {
    if (abs(force.y) < 0.01) {
      force.y = 0;
    }
    if (abs(force.x) < 0.01) {
      force.x = 0;
    }
    acceleration.add(force);
  }

  void addForce(float x, float y) {
    if (abs(y) < 0.01) {
      y = 0;
    }
    if (abs(x) < 0.01) {
      x = 0;
    }
    acceleration.add(new PVector(x, y));
  }

  void addImpulseForce(PVector force) {
    if (abs(force.y) < 0.01) {
      force.y = 0;
    }
    if (abs(force.x) < 0.01) {
      force.x = 0;
    }
    velocity.add(force);
  }

  void addImpulseForce(float x, float y) {
    if (abs(y) < 0.01) {
      y = 0;
    }
    if (abs(x) < 0.01) {
      x = 0;
    }
    velocity.x += x;
    velocity.y += y;
  }
}

class Collider extends EntityComponent {
  PVector size;
  PVector halfSize;
  PVector offset;
  int collisionSide;

  Collider(float x, float y) {
    super();
    size = new PVector(x, y);
    halfSize = new PVector(x/2, y/2);
  }

  Collider(PVector _size) {
    size = _size.copy(); 
    size = new PVector(_size.x/2, _size.y/2);
  }

  void update() {
  }
}
