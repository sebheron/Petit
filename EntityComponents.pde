abstract class EntityComponent {
  UUID id;
  Entity entity;
  
  EntityComponent(Entity _entity){
    id = UUID.randomUUID();
    entity = _entity;
  }
  
  abstract void update();
}

class GravityComponent extends EntityComponent {
  GravityComponent(Entity _entity){
    super(_entity);
  }
  
  void update(){
    
  }
}
