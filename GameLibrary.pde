import java.util.*;

World world;
Camera camera;

Entity player, obj2, obj3, obj4;
Entity[] platforms;

SpriteSheet playerSprites, boxSprites, groundSprites;

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

  player = new Entity(width/2 - 10, height/2 + 90, 60, 40, playerSprites);
  player.addComponent(new Physicsbody(1.1, false));
  player.addComponent(new Collider(35, 40));

  obj2 = new Entity(width/2 + 30, height/2, 30, 30, boxSprites);
  obj2.addComponent(new Physicsbody(1.1, false));
  obj2.addComponent(new Collider(30, 30));
  
  obj3 = new Entity(width/2 + 30, height/2 + 30, 30, 30, boxSprites.copy());
  obj3.addComponent(new Physicsbody(1.1, false));
  obj3.addComponent(new Collider(30, 30));
  
  obj4 = new Entity(width/2 + 30, height/2 + 60, 30, 30, boxSprites.copy());
  obj4.addComponent(new Physicsbody(1.1, false));
  obj4.addComponent(new Collider(30, 30));
  
  world = new World(600, 600);
  world.addEntity(player);
  world.addEntity(obj2);
  world.addEntity(obj3);
  world.addEntity(obj4);
  camera = new Camera(world);
  
  platforms = new Entity[5];
  for (int i = 0; i < 5; i++){
    platforms[i] = new Entity(90 * i + 90, height/2 + 120, 90, 30, groundSprites);
    platforms[i].addComponent(new Collider(90, 30));
    world.addEntity(platforms[i]);
  }
  
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
  
  camera.update(player);
  world.display();
}
