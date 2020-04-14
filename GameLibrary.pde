import java.util.*; //<>//

Object world;
Camera view;

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
  Physicsbody rb1 = new Physicsbody(10);
  rb1.velocity = new PVector(-1, 0);
  obj1.addComponent(rb1);
  obj1.addComponent(new Collider(35, 40));

  obj2 = new Entity(width/2, height/2, 30, 30, boxSprites);
  Physicsbody rb2 = new Physicsbody(10);
  obj2.addComponent(rb2);
  obj2.addComponent(new Collider(30, 30));

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
  
  if (right)
    obj1.physicsbody.addForce(1,0);
  if (left)
    obj1.physicsbody.addForce(-1,0);
  if (up)
    obj1.physicsbody.addForce(0,-1);
  if (down)
    obj1.physicsbody.addForce(0,1);

  if (obj1.physicsbody.velocity.mag() > 0){
    obj1.display(2 + ((frameCount / 20) % 2));
  } else {
    obj1.display("still");
  }
  obj2.display("closed");
}

boolean up, down, left, right;

void keyPressed() {
  if (key == 'w')
    up = true;
  if (key == 's')
    down = true;
  if (key == 'a')
    left = true;
  if (key == 'd')
    right = true;
}

void keyReleased() {
  if (key == 'w')
    up = false;
  if (key == 's')
    down = false;
  if (key == 'a')
    left = false;
  if (key == 'd')
    right = false;
}
