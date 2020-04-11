// Loading scene

int loadingCount = 0;

void LoadingScene() {
  // Set the necessary attributes.
  background(139, 69, 19);
  textSize(100);
  textAlign(CENTER);
  // Create a string of loading dots according to the current frame count.
  String loadingDots = new String(new char[(frameCount % 24) / 6]).replace("\0", ".");
  // Draw the text preceded by the word loading in caps.
  textOutlined("LOADING" + loadingDots, width/2, height/2, 255, 0);
  
  // The way the loading works is if the frame rate overtakes 60 a total of 15 times then we will assume it has stablized enough to move onto the game.
  // Another way considered was to reset the loadingCount to zero when a frame rate of 60 wasn't achieved, however this meant loading was unecessarily long.
  // This method of loading is taken from older games of the early 2000s.
  if (loadingCount > 15) {
    loading = false;
  }
  if (frameRate > 60) {
    loadingCount++;
  }
}

// Game scene

void GameScene() {
  // Update the players velocity, position and check boundaries.
  player.update();
  
  // Check collisions for each of the objects in the level.
  // Not an efficient way of checking due to looping though every object, however the CheckCollisions function will determine if it is worth actually checking intersections, positions etc.
  for (int j = 0; j < level.length; j++) {
    player.collisionSide = CheckCollisions(player, level.levelObjects[j]);
    player.checkColliders();
  }
  
  // Move the camera according to the players new position.
  // This should happen last to avoid awkward movement of the camera.
  MoveCamera();

  // Draw the sky background.
  background(135, 206, 235);

  // Draw the trees and buildings.
  DisplayBackground(background3Image, 0);
  DisplayBackground(background2Image, 2);
  DisplayBackground(backgroundImage, 1);

  // Display the level objects.
  // Only those present within the camera space will be drawn.
  for (int i = 0; i < level.length; i++) {
    level.levelObjects[i].display();
  }
  
  // Draw the player and hud.
  player.display();
  hud.display();
}
