abstract class EntityComponent {
  UUID id;
  Entity entity;
  boolean enabled;
  
  EntityComponent(){
    id = UUID.randomUUID();
    enabled = true;
  }
  
  void enable(){
    enabled = true; 
  }
  
  void disable(){
    enabled = false;
  }
  
  abstract void update();
}

class Physicsbody extends EntityComponent {
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  float drag = 0.9;
  
  Physicsbody(){
    super(); 
  }
  
  Physicsbody(float _drag){
    super();
    drag = _drag;
  }
  
  void update(){
    velocity.add(acceleration);
    entity.x += velocity.x;
    entity.y += velocity.y;
    velocity.mult(1/drag);
    acceleration = new PVector();
  }
  
  void addForce(PVector force){
    acceleration.add(force);
  }
  
  void addForce(float x, float y){
    acceleration.add(new PVector(x, y));
  }
  
  /*void addImpulseForce(PVector force){
    velocity.add(force);
  }
  
  void addImpulseForce(float x, float y){
    velocity.x += x;
    velocity.y += y;
  }*/
}

class Collider extends EntityComponent {
  PVector size;
  PVector halfSize;
  PVector offset;
  
  Collider(float x, float y){
    super();
    size = new PVector(x, y);
    halfSize = new PVector(x/2, y/2);
  }
  
  Collider(PVector _size){
    size = _size.copy(); 
    size = new PVector(_size.x/2, _size.y/2);
  }
  
  void update(){
    
  }
}
