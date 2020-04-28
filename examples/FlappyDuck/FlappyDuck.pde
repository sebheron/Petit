World world;

Camera camera;

Entity duck, treeBottom, treeTop;

SpriteSheet duckSprites, treeSprites;

boolean knockedout;

int points = 0;

void setup() {
  size(600, 800);
  smooth(0);
  frameRate(60);
  
  GRAVITY = new PVector(0, 0.5);
  
  world = new World(600, 800);
  
  duckSprites = new SpriteSheet("duck.png", 13, 8);
  duckSprites.titleSprite(0, "wings up");
  duckSprites.titleSprite(1, "wings down");
  duckSprites.titleSprite(2, "knocked out");
  
  treeSprites = new SpriteSheet("trees.png", 11, 100);
  treeSprites.titleSprite(0, "bottom");
  treeSprites.titleSprite(1, "top");
  
  duck = new Entity(width/2, height/2, 78, 48, duckSprites);
  duck.addComponent(new Physicsbody(1.1, false));
  duck.addComponent(new Collider(78, 48, 0));
  
  treeBottom = new Entity(width + 33, height - 180, 66, 600, treeSprites);
  treeBottom.addComponent(new Collider(66, 600, 0));
  treeBottom.setSprite(0);
  treeTop = new Entity(width + 33, -170, 66, 600, treeSprites.copy());
  treeTop.addComponent(new Collider(66, 600, 0));
  treeTop.setSprite(1);
  resetAndRandomiseTree();
  
  world.addEntity(treeBottom);
  world.addEntity(treeTop);
  world.addEntity(duck);
  
  camera = new Camera(world);
  
  textSize(80);
  textAlign(CENTER, TOP);
}

void update() {
  if (!knockedout){
    background(180, 180, 255);
    
    world.update();
    
    if (KEY_SPACE_DOWN) {
      duck.physicsbody.addImpulseForce(0, -24);
    }
    
    if (duck.physicsbody.velocity.y > 0) {
      duck.setSprite("wings up");
    } else if (duck.physicsbody.velocity.y < 0) {
      duck.setSprite("wings down");
    }
    
    if (duck.position.y > height - duck.size.y / 2 || duck.position.y < 0 + duck.size.y / 2 || duck.collider.collisions.none()){
      duck.setSprite("knocked out");
      knockedout = true;
    }
    
    treeTop.position.x -= 3;
    treeBottom.position.x -= 3;
    
    if (treeTop.position.x == width / 2 + duck.size.x / 2){
      points++;
    }
    
    if (treeTop.position.x < -treeTop.size.x / 2){
      resetAndRandomiseTree();
    }
    
    camera.update(duck);
    world.display();
    
    fill(0);
    text(points, width/2+4, 0);
    fill(255);
    text(points, width/2-4, 0);
  } else {
    if (KEY_SPACE_DOWN){
      knockedout = false;
      points = 0;
      duck.position.y = height/2;
      resetAndRandomiseTree();
    }
  }
}

void resetAndRandomiseTree(){
  treeTop.position.x = width + treeTop.size.x;
  treeBottom.position.x = width + treeTop.size.x;
  
  float newHeight = random(-8, 8);
  treeTop.position.y = newHeight * 20;
  treeBottom.position.y = height + newHeight * 20; 
}
