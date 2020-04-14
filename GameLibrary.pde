import java.util.*; //<>// //<>//

World world;
Camera camera;

Entity obj1, obj2;

SpriteSheet playerSprites, boxSprites;

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

  obj1 = new Entity(0, height/2, 60, 40, playerSprites);
  obj1.addComponent(new Physicsbody(10));
  obj1.addComponent(new Collider(35, 40));

  obj2 = new Entity(width/2, height/2, 30, 30, boxSprites);
  obj2.addComponent(new Physicsbody(10));
  obj2.addComponent(new Collider(30, 30));
  
  world = new World(600, 600);
  world.addEntity(obj1);
  world.addEntity(obj2);
  camera = new Camera(world);

  textSize(40);
  textAlign(LEFT, TOP);
}

void draw() {
  test();
}

float frame;

void test() {
  background(150);

  obj1.update();
  obj2.update();
  
  obj2.CheckCollisions(obj1);
  obj1.CheckCollisions(obj2);
  //obj2.CheckCollisions
  
  if (KEY_RIGHT)
    obj1.physicsbody.addForce(1,0);
  if (KEY_LEFT)
    obj1.physicsbody.addForce(-1,0);
  if (KEY_UP)
    obj1.physicsbody.addForce(0,-1);
  if (KEY_DOWN)
    obj1.physicsbody.addForce(0,1);

  if (obj1.physicsbody.velocity.mag() > 0){
    obj1.setSprite(2 + ((frameCount / 20) % 2));
  } else {
    obj1.setSprite("still");
  }
  obj2.setSprite("closed");
  
  world.display();
}
