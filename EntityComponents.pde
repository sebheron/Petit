static String Entity_Not_Referenced_Exception = "The EntityComponent (%s) is not attached to an Entity.";

class EntityException extends Exception{
  EntityException(String message){
    super(message); 
  }
}

abstract class EntityComponent {
  UUID id;
  Entity entity;
  
  EntityComponent(){
    id = UUID.randomUUID();
  }
  
  void U() throws EntityException{
    if (entity == null){
      throw new EntityException(String.format(Entity_Not_Referenced_Exception, id));
    }
  }
  
  abstract void Update();
}

class Rigidbody extends EntityComponent {
  Vector2 velocity;
  float angularVelocity;
  float mass;
  
  void Update(){
    
  }
  
  void AddForce(Vector2 force){
    
  }
  
  void AddForce(float x, float y){
    
  }
  
  void AddImpulseForce(Vector2 force){
    velocity.AddTo(force);
  }
  
  void AddImpulseForce(float x, float y){
    velocity.x += x;
    velocity.y += y;
  }
}
