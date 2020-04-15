import java.util.*; //<>//

World world;
Camera camera;

Entity player, obj2, obj3, obj4, platform1, platform2;

SpriteSheet playerSprites, boxSprites, groundSprites;

float delta, lastTime;

void setup() {
  size(500, 500);
  smooth(0);
  frameRate(60);

  playerSprites = new SpriteSheet("player.png", 15, 10);
  playerSprites.titleSprite(0, "still");
  playerSprites.titleSprite(1, "jump");
  playerSprites.titleSprite(2, "run");
  playerSprites.titleSprite(3, "run");

  boxSprites = new SpriteSheet("box.png", 10, 10);
  boxSprites.titleSprite(0, "closed");
  boxSprites.titleSprite(1, "broken");
  
  groundSprites = new SpriteSheet("platform.png", 30, 10);
  boxSprites.titleSprite(0, "platform");

  player = new Entity(width/2, height/2 + 90, 60, 40, playerSprites);
  player.addComponent(new Physicsbody());
  player.addComponent(new Collider(35, 40));

  obj2 = new Entity(width/2 + 30, height/2, 30, 30, boxSprites);
  obj2.addComponent(new Physicsbody());
  obj2.addComponent(new Collider(30, 30));
  
  obj3 = new Entity(width/2 + 30, height/2 + 30, 30, 30, boxSprites.copy());
  obj3.addComponent(new Physicsbody());
  obj3.addComponent(new Collider(30, 30));
  
  obj4 = new Entity(width/2 + 30, height/2 + 60, 30, 30, boxSprites.copy());
  obj4.addComponent(new Physicsbody());
  obj4.addComponent(new Collider(30, 30));
  
  platform1 = new Entity(width/2, height/2 + 120, 90, 30, groundSprites);
  platform1.addComponent(new Collider(90, 30));

  
  world = new World(600, 600);
  world.useBorders = true;
  world.addEntity(player);
  world.addEntity(obj2);
  world.addEntity(obj3);
  world.addEntity(obj4);
  world.addEntity(platform1);
  camera = new Camera(world);
  
  obj2.setSprite("closed");
  obj3.setSprite("broken");
  obj4.setSprite("closed");

  textSize(40);
  textAlign(LEFT, TOP);
}

void draw() {
  test();
}

float frame;

void test() {
  delta = millis() - lastTime;
  background(150);
  textSize(30);
  fill(255);
  text(delta, 30, 30);

  world.update();
  
  if (KEY_RIGHT)
    player.physicsbody.addForce(1,0);
  if (KEY_LEFT)
    player.physicsbody.addForce(-1,0);
  if (KEY_UP)
    player.physicsbody.addForce(0,-1);
  if (KEY_DOWN)
    player.physicsbody.addForce(0,1);

  if (player.physicsbody.velocity.mag() > 0){
    player.setSprite(2 + ((frameCount / 20) % 2));
  } else {
    player.setSprite("still");
  }
  
  camera.update(player);
  world.display();
  lastTime = millis();
}
