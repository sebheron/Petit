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
  PVector velocity, acceleration;
  float drag;
  boolean locked, grounded;

  Physicsbody() {
    super();
    drag = 10;
    velocity = new PVector(0, 0);
    acceleration = new PVector(0,0);
  }

  Physicsbody(float _drag, boolean _locked) {
    super();
    drag = _drag;
    locked = _locked;
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void update() {
    if (!locked) {
      velocity.add(acceleration);
      entity.position.add(velocity);
      
      velocity.mult(1/drag);
      velocity.x *= FRICTION;
      velocity.add(GRAVITY);
      
      zeroLowVelX();
    }
    acceleration.set(0, 0);
  }

  void addForce(PVector force) {
    acceleration.add(force);
  }

  void addForce(float x, float y) {
    acceleration.add(new PVector(x, y));
  }

  void addImpulseForce(PVector force) {
    velocity.add(force);
  }

  void addImpulseForce(float x, float y) {
    velocity.x += x;
    velocity.y += y;
  }
  
  void zeroLowVelX(){
    if (abs(velocity.x) < 0.01){
      velocity.x = 0;
    }
  }
}

class Collider extends EntityComponent {
  PVector size, halfSize, collisionSide;
  int layer;
  float material;
  boolean collisionOn;

  Collider(float x, float y, float _material) {
    super();
    size = new PVector(x, y);
    halfSize = new PVector(x/2, y/2);
    collisionSide = COLLISION_NONE;
    material = _material;
    collisionOn = true;
  }

  Collider(PVector _size, float _material) {
    size = _size.copy(); 
    halfSize = new PVector(_size.x/2, _size.y/2);
    material = _material;
    collisionOn = true;
  }

  void update() {}
}

class CollisionMask extends EntityComponent {
  List<Integer> layers;
  
  CollisionMask(int ... _layers){
    layers = new ArrayList();
    for (int layer : _layers){
      layers.add(layer); 
    }
  }
  
  void add(int layer){
    if (!layers.contains(layer)){
      layers.add(layer);
    }
  }
  
  boolean contains(int layer){
    return layers.contains(layer); 
  }
  
  void update() {}
}
