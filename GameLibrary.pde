import java.util.*;

World world;
Camera camera;

Entity player, obj2, obj3, obj4, spring;
Entity[] platforms;

SpriteSheet playerSprites, boxSprites, groundSprites, springSprites;

PVector startPos;

void setup() {
  size(500, 500);
  smooth(0);
  frameRate(60);
  
  world = new World(600, 600);
  
  startPos = new PVector(width/2 - 10, height/2 + 80);

  playerSprites = new SpriteSheet("player.png", 15, 10);
  playerSprites.titleSprite(0, "still");
  playerSprites.titleSprite(1, "jump");
  playerSprites.titleSprite(2, "run");
  playerSprites.titleSprite(3, "run");

  boxSprites = new SpriteSheet("box.png", 10, 10);
  boxSprites.titleSprite(0, "closed");
  boxSprites.titleSprite(1, "broken");
  
  groundSprites = new SpriteSheet("platform.png", 30, 10);
  groundSprites.titleSprite(0, "platform");
  
  springSprites = new SpriteSheet("spring.png", 10, 10);

  obj2 = new Entity(width/2 + 30, height/2, 30, 30, boxSprites);
  obj2.addComponent(new Physicsbody(1.1, false));
  obj2.addComponent(new Collider(30, 30, 0, 0));
  world.addEntity(obj2);
  
  obj3 = new Entity(width/2 + 30, height/2 + 30, 30, 30, boxSprites.copy());
  obj3.addComponent(new Physicsbody(1.1, false));
  obj3.addComponent(new Collider(30, 30, 0, 0));
  world.addEntity(obj3);
  
  obj4 = new Entity(width/2 + 65, height/2 + 60, 30, 30, boxSprites.copy());
  obj4.addComponent(new Physicsbody(1.1, false));
  obj4.addComponent(new Collider(30, 30, 2, 1));
  world.addEntity(obj4);
  
  spring = new Entity(90, height/2 + 90, 30, 30, springSprites);
  spring.addComponent(new Collider(30, 30, 3, 0));
  world.addEntity(spring);
  
  camera = new Camera(world);
  
  platforms = new Entity[5];
  for (int i = 0; i < 5; i++){
    platforms[i] = new Entity(90 * i + 90, height/2 + 120, 90, 30, groundSprites);
    platforms[i].addComponent(new Collider(90, 30, 0, 0));
    world.addEntity(platforms[i]);
  }
  
  player = new Entity(startPos.x, startPos.y, 60, 40, playerSprites);
  player.addComponent(new Physicsbody(1.1, false));
  player.addComponent(new Collider(35, 40, 0, 0));
  player.addComponent(new CollisionMask(0));
  world.addEntity(player);
  
  obj2.setSprite("closed");
  obj3.setSprite("broken");

  textSize(40);
  textAlign(LEFT, TOP);
}

void draw() {
  test();
}

float frame;

void test() {
  background(255);
  textSize(30);
  fill(255);
  text(frameRate, 30, 30);

  world.update();
  
  if (KEY_RIGHT)
    player.physicsbody.addForce(1,0);
  if (KEY_LEFT)
    player.physicsbody.addForce(-1,0);
  if (KEY_UP && player.physicsbody.grounded)
    player.physicsbody.addImpulseForce(0,-15);
  if (KEY_DOWN)
    player.physicsbody.addForce(0,1);

  if (!player.physicsbody.grounded){
    player.setSprite("jump");
  } else if (abs(player.physicsbody.velocity.x) > 0){
    player.setSprite(2 + ((frameCount / 20) % 2));
  } else {
    player.setSprite("still");
  }
  
  if (player.y > world.h){
    player.x = startPos.x;
    player.y = startPos.y;
  }
  
  camera.update(player);
  world.display();
}
