class Entity extends Object {
  UUID id;
  private List<EntityComponent> components;
  
  Entity(float _x, float _y, float _w, float _h){
    super(_x, _y, _w, _h);
    id = UUID.randomUUID();
    components = new ArrayList<EntityComponent>();
  }
  
  void addComponent(EntityComponent eC){
    eC.entity = this;
    eC.setup();
    components.add(eC);
  }
  
  void removeComponent(int index){
    components.remove(index);
  }
  
  void removeComponent(EntityComponent eC){
    components.remove(eC);
  }
  
  EntityComponent getComponent(Class type){
    for (EntityComponent eC : components){
      if (type.isInstance(eC)){
        return eC;
      }
    }
    return null;
  }
  
  void display(){
    
  }
  
  void update(){
    for(EntityComponent eC : components){
      eC.update();
    }
  }
}
