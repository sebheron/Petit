import ddf.minim.*;
import java.util.*;

boolean loading = true;

HUD hud;

Player player;

LevelManager level;

Object camera, world;

void setup() {
  surface.setTitle("SQUIRREL!");
  size(1200, 600);
  smooth(0);
  frameRate(60);
  
  // Load content from files.
  LoadContent();
  
  // Create new hud.
  hud = new HUD();

  // Create new player object.
  player = new Player(320, height/2, 50, 37.5, 91.25, 50); //<>//

  // Create new level manager.
  level = new LevelManager();
  //Load the first level.
  level.loadLevel(levels[levelIndex]);

  // Create new world space.
  world = new Object(0, 0, 8448, 2288);
  // Create camera view.
  camera = new Object(0, 0, width, height);

  // Set the camera view to far left center of the world.
  camera.x = (world.x + world.w/2) - camera.w/2;
  camera.y = (world.y + world.h/2) - camera.h/2;
}

void draw() {
  // Draw a particular scene according to the certain boolean variables.
  if (loading) {
    LoadingScene();
  } else {
    GameScene(); 
  }
}
