import ddf.minim.*;
import java.util.*;

boolean loading = true;

Camera view;

Object world;

void setup() {
  surface.setTitle("SQUIRREL!");
  size(1200, 600);
  smooth(0);
  frameRate(60); //<>//

  // Create new world space.
  world = new Object(0, 0, 8448, 2288);
  
  // Create camera view.
  view = new Camera();
}

void draw() {
  test();
}

float frame;

void test(){
  background(150);
  
  Entity e = new Entity(5, 6, 10, 10);
  
  SpriteSheet playerSprites = new SpriteSheet("player.png", 15, 10);
  image(playerSprites.sprites[floor(frame) % playerSprites.count], width/2, height/2, 60, 40);
  frame += 0.01;
}
