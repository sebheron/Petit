class Entity extends Object {
  UUID id;
  private List<EntityComponent> components;

  int sprite;
  SpriteSheet spritesheet;
  Physicsbody physicsbody;
  Collider collider;
  CollisionMask mask;

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
    } else if (eC instanceof Collider) {
      collider = (Collider)eC;
    } else if (eC instanceof CollisionMask) {
      mask = (CollisionMask)eC;
    }
  }

  void removeComponent(int index) {
    EntityComponent eC = components.get(index);
    if (eC instanceof Physicsbody) {
      physicsbody = null;
    } else if (eC instanceof Physicsbody) {
      collider = null;
    } else if (eC instanceof CollisionMask) {
      mask = null;
    }
    components.remove(index);
  }

  void removeComponent(EntityComponent eC) {
    components.remove(eC);
    if (eC instanceof Physicsbody) {
      physicsbody = null;
    } else if (eC instanceof Physicsbody) {
      collider = null;
    } else if (eC instanceof CollisionMask) {
      mask = null;
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

  void setSprite(int index) {
    spritesheet.setSprite(index);
  }

  void setSprite(String title) {
    spritesheet.setSprite(title);
  }

  void display(PVector cam) {
    spritesheet.drawSprite(position.x - cam.x, position.y - cam.y, size.x, size.y);
  }

  void update() {
    for (EntityComponent eC : components) {
      eC.update();
    }
    lateUpdate();
  }
  
  void lateUpdate(){}

  PVector getVelocity() {
    if (physicsbody != null) {
      return physicsbody.velocity.copy();
    }
    return new PVector();
  }
}
