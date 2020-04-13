import ddf.minim.*;
import java.util.*;

boolean loading = true;

Player player;

LevelManager level;

Camera view;

Object world;

void setup() {
  surface.setTitle("SQUIRREL!");
  size(1200, 600);
  smooth(0);
  frameRate(60);
  
  // Load content from files.
  LoadContent();

  // Create new player object.
  player = new Player(320, height/2, 50, 37.5, 91.25, 50); //<>//

  // Create new level manager.
  level = new LevelManager();
  
  //Load the first level.
  level.loadLevel(levels[levelIndex]);

  // Create new world space.
  world = new Object(0, 0, 8448, 2288);
  
  // Create camera view.
  view = new Camera();
}

void draw() {
  // Draw a particular scene according to the certain boolean variables.
  if (loading) {
    LoadingScene();
  } else {
    //GameScene(); 
    test();
  }
}

int frame;

void test(){
  background(0);
  Entity e = new Entity(5, 6, 10, 10, null, 0, 0);
  GravityComponent g = new GravityComponent(e);
  
  e.x += 5;
  
  SpriteSheet sheet = new SpriteSheet("spritesheet.png", 20, 60);
  image(sheet.sprites[frame % sheet.count], width/2, height/2);
  println(frame % sheet.count);
  frame++;
}
