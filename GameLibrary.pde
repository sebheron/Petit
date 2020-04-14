import java.util.*;

Object world;
Camera view;

Entity testObj;

SpriteSheet playerSprites;

Rect rect1, rect2;

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
  testObj = new Entity(5, 6, 10, 10, playerSprites);
  testObj.addComponent(new Rigidbody());
  
  rect1 = new Rect(0, height/2, 30, 30);
  rect2 = new Rect(width, height/2, 30, 30);
  
  textSize(40);
  textAlign(LEFT, TOP);
}

void draw() {
  test();
}

float frame;

void test(){
  background(150);
  
  //testObj.update();
  
  //rect(width/2 - 20, height/2 - 20, 40, 40);
  //playerSprites.drawSprite("still", width/2, height/2, 60, 40);
  
  rect1.x = (frameCount / 2) % width;
  rect2.x = width - ((frameCount / 2) % width) - rect2.w;
  
  fill(255);
  
  text(frameRate, 0, 0);
  
  if (rect1.Intersects(rect2)){
    fill(255, 0, 0);
  } else {
    fill(255); 
  }
  
  rect1.display();
  rect2.display();
}
