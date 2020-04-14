import java.util.*;

Object world;
Camera view;

Entity testObj;

SpriteSheet playerSprites;

void setup() {
  size(500, 500);
  smooth(0);
  frameRate(60);
  
  playerSprites = new SpriteSheet("player.png", 15, 10);
  playerSprites.titleSprite(0, "still");
  playerSprites.titleSprite(1, "jump");
  playerSprites.titleSprite(2, "run");
  playerSprites.titleSprite(3, "run");
   //<>//
  testObj = new Entity(5, 6, 10, 10);
  testObj.addComponent(new Rigidbody());
}

void draw() {
  test();
}

float frame;

void test(){
  background(150);
  testObj.update();
  
  rect(width/2 - 20, height/2 - 20, 40, 40);
  playerSprites.drawSprite("still", width/2, height/2, 60, 40);
  
  frame += 0.1;
}
