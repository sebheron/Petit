import java.util.*;

World world;
Camera camera;

Entity player, crate, brokenCrate, brick, spring, wall;
Entity[] platforms;

SpriteSheet playerSprites, boxSprites, groundSprites, springSprites, brickSprites;

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
  playerSprites.titleSprite(2, "run 1");
  playerSprites.titleSprite(3, "run 2");

  boxSprites = new SpriteSheet("box.png", 10, 10);
  boxSprites.titleSprite(0, "closed");
  boxSprites.titleSprite(1, "broken");

  groundSprites = new SpriteSheet("platform.png", 30, 10);
  groundSprites.titleSprite(0, "untouched");
  groundSprites.titleSprite(1, "touched");

  springSprites = new SpriteSheet("spring.png", 10, 10);

  brickSprites = new SpriteSheet("brick.png", 10, 10);


  crate = new Entity(width/2 + 260, height/2, 30, 30, boxSprites);
  crate.addComponent(new Physicsbody(1.1, false));
  crate.addComponent(new Collider(30, 30, 0));
  world.addEntity(crate);

  brokenCrate = new Entity(width/2 + 260, height/2 + 30, 30, 30, boxSprites.copy());
  brokenCrate.addComponent(new Physicsbody(1.1, false));
  brokenCrate.addComponent(new Collider(30, 30, 0));
  world.addEntity(brokenCrate);

  brick = new Entity(width/2 + 60, height/2, 30, 30, brickSprites);
  brick.addComponent(new Physicsbody(1.1, false));
  Collider brickCollider = new Collider(30, 30, 0);
  //brickCollider.layer = 1;
  brick.addComponent(brickCollider);
  world.addEntity(brick);

  spring = new Entity(width/2 + 120, height/2 + 90, 30, 30, springSprites);
  spring.addComponent(new Collider(30, 30, 3));
  world.addEntity(spring);

  wall = new Entity(90, height/2 + 90, 30, 120, boxSprites.copy());
  wall.addComponent(new Collider(30, 120, 0));
  world.addEntity(wall);

  camera = new Camera(world);

  platforms = new Entity[6];
  for (int i = 0; i < 5; i++) {
    platforms[i] = new Entity(100 * i + 90, height/2 + 120, 90, 30, groundSprites.copy());
    Collider platformCollider = new Collider(90, 30, 0);
    platforms[i].addComponent(platformCollider);
    platforms[i].setSprite("untouched");
    world.addEntity(platforms[i]);
  }
  platforms[5] = new Entity(width/2 + 100, height/2 - 60, 90, 30, groundSprites.copy());
  Collider platformCollider = new Collider(90, 30, 0);
  platforms[5].addComponent(platformCollider);
  platforms[5].setSprite("untouched");
  world.addEntity(platforms[5]);

  player = new Entity(startPos.x, startPos.y, 60, 40, playerSprites);
  player.addComponent(new Physicsbody(1.1, false));
  player.addComponent(new Collider(35, 40, 0));
  player.addComponent(new CollisionMask(0));
  world.addEntity(player);

  crate.setSprite("closed");
  brokenCrate.setSprite("broken");

  textSize(40);
  textAlign(LEFT, TOP);
}

void draw() {
  test();
}

float frame;

void test() {
  background(100);
  textSize(30);
  fill(255);
  text(frameRate, 30, 30);
  world.update();

  if (KEY_RIGHT)
    player.physicsbody.addForce(1, 0);
  if (KEY_LEFT)
    player.physicsbody.addForce(-1, 0);
  if (KEY_UP && player.collider.collisions.bottom)
    player.physicsbody.addImpulseForce(0, -15);
  if (KEY_DOWN)
    player.physicsbody.addForce(0, 1);

  if (!player.collider.collisions.bottom) {
    player.setSprite("jump");
  } else if (abs(player.physicsbody.velocity.x) > 0) {
    player.setSprite(2 + ((frameCount / 20) % 2));
  } else {
    player.setSprite("still");
  }

  if (player.position.y > world.size.y) {
    player.position.set(startPos);
  }

  for (Entity platform : platforms) {
    if (!platform.collider.collisions.none()) {
      platform.setSprite("touched");
    }
  }

  camera.update(player);
  world.display();
}
