class Entity extends Object {
  UUID id;
  private List<EntityComponent> components;
  
    Entity(float _x, float _y, float _w, float _h){
    super(_x, _y, _w, _h);
    id = UUID.randomUUID();
    components = new ArrayList<EntityComponent>();
  }
  
  void AddComponent(EntityComponent eC){
    eC.entity = this;
    components.add(eC);
  }
  
  void RemoveComponent(int index){
    components.remove(index);
  }
  
  void RemoveComponent(EntityComponent eC){
    components.remove(eC);
  }
  
  void Draw(){
    
  }
  
  void Update(){
    for(EntityComponent eC : components){
      eC.Update();
    }
  }
}
