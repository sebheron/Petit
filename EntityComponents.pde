abstract class EntityComponent {
  UUID id;
  Entity entity;
  
  EntityComponent(){
    id = UUID.randomUUID();
  }
  
  abstract void update();
}

class Rigidbody extends EntityComponent {
  Vector2 velocity;
  float angularVelocity;
  float mass;
  
  void update(){
    println("updating rigidbody!");
  }
  
  void addForce(Vector2 force){
    
  }
  
  void addForce(float x, float y){
    
  }
  
  void addImpulseForce(Vector2 force){
    velocity.addTo(force);
  }
  
  void addImpulseForce(float x, float y){
    velocity.x += x;
    velocity.y += y;
  }
}
