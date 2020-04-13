class Entity extends ImageObject {
  UUID id;
  
  Entity(float _x, float _y, float _w, float _h, PImage[] _images, float _imageWidth, float _imageHeight){
    super(_x, _y, _w, _h, _images, _imageWidth, _imageHeight);
    id = UUID.randomUUID();
  }
  
  Entity(float _x, float _y, PImage[] _images){
    super(_x, _y, _images[0].width, _images[0].height, _images, _images[0].width, _images[0].height);
  }
  
  Entity(PImage[] _images){
    super(0, 0, _images[0].width, _images[0].height, _images, _images[0].width, _images[0].height);
  }
}


// The player class is the most involved.
class Player extends ImageObject {
  //Local player variables.
  float startX, startY, // This is the players start x and y used for when they die.
    velocityX, velocityY, // These are the velocity variables, the x velocity and y velocity respectively.
    accelerationX; // This is applied to the x velocity.

  float movement = 0.5; //This determines how much the player moves.
  float maxXVelocity = 8; // This is the max velocity for the x.
  float maxYVelocity = 18; // And this is for the y.
  float friction = 0.9; // This is the friction applied to the x velocity.
  float jumpForce = -18; // This is the height applied to the y velocity when jumping.
  float gravity = 0.6; // This is the gravity applied to the y velocity when not on ground.
  float bounce = -0.5; // This determines how much the player bounces when hitting a wall.

  boolean onGround; // This determines whether the player is on the ground or not.

  float frame = 0; // The current animation frame.

  int currentScale = -1; // This is the direction the player is facing (-1 for left, 1 for right).

  int collisionSide = 0; // The side the collision occured on.

  Player(float _x, float _y, float _w, float _h, float _imageWidth, float _imageHeight) {
    super(_x, _y, _w, _h, null, _imageWidth, _imageHeight);
  }

  void update() {
    setAccelerations();
    applyAndCheckVelocities();

    // Moves the players position according to its velocity and limit the positions according to the world bounds.
    x = Math.max(0, Math.min(x + velocityX, world.w - w)); 
    y = Math.max(0, Math.min(y + velocityY, world.w - w));

    checkBoundaries();
  }

  void setAccelerations() {
    // Set the acceleration of the player according to the buttons pressed.
    if (left && right) {
      accelerationX = 0;
    }
    if (left && !right) {
      accelerationX = -movement;
    }
    if (right && !left) {
      accelerationX = movement;
    }
    if (!left && !right) {
      accelerationX = 0;
    }
    // Jump if the player is onGround and up is pressed.
    if (up && onGround) {
      jump(jumpAudio, jumpForce);
    }
  }

  void jump(AudioPlayer audio, float force) {
    // Set the y velocity to the jump force. Doing this applies the force as impulse.
    velocityY = force;
    // Play the sound.
    audio.rewind();
    audio.play();
    // Turn the friction off and set the player to not on the ground.
    onGround = false;
    friction = 1;
  }

  void applyAndCheckVelocities() {
    //Apply each of the velocity values.
    velocityX += accelerationX;

    velocityX *= friction;

    velocityY += gravity;

    //Cap the velocity off.
    if (velocityX > maxXVelocity) {
      velocityX = maxXVelocity;
    }
    if (velocityX < -maxXVelocity) {
      velocityX = -maxXVelocity;
    }
    if (velocityY > 3 * maxYVelocity) {
      velocityY = 3 * maxYVelocity;
    }
    
    //If the velocity is close to zero, set it to zero.
    if (abs(velocityX) < 0.2) {
      velocityX = 0;
    }
  }

  //Check the players boundaries and bounce if on the top, left or right boundary.
  void checkBoundaries() {
    if (x <= 0) {
      velocityX *= bounce;
    }
    if (x >= world.w - w) {
      velocityX *= bounce;
    }
    if (y <= 0) {
      velocityY *= bounce;
      y = 0;
    }
    if (y >= world.h - h) {
      //If the player is at the bottom of the screen then remove a life and reset the players position.
      x = startX;
      y = startY;
      damageAudio.rewind();
      damageAudio.play();
    }
  }

  //Check if the player has collided with anything and set the variables accordingly.
  void checkColliders() {
    if (collisionSide == BOTTOM && velocityY >= 0) {
      onGround = true;
      friction = 0.9;
      velocityY = 0;
    } else if (collisionSide == TOP && velocityY <= 0) {
      velocityY = 0;
    } else if (collisionSide == RIGHT && velocityX >= 0) {
      velocityX = 0;
    } else if (collisionSide == LEFT && velocityX <= 0) {
      velocityX = 0;
    }
    if (collisionSide != BOTTOM && velocityY > 0) {
      onGround = false;
      friction = 1;
    }
  }

  @Override
    void drawObject() {
    pushMatrix();// Push the current matrix for screen.
    PImage currentImage;
    if (onGround && !up) {
      if (velocityX != 0) {
        currentImage = walkingSprites[round(frame) % 4];// Set the current image to a respective walking sprite.
      } else {
        currentImage = walkingSprites[1];// Set the current image to an idle walking sprite.
      }
      frame += abs(velocityX/25);// Increase the frame by the velocity.
    } else {
      currentImage = jumpingSprites[round(frame) % 4];//  
      frame += 0.4; // Increase the frame by 0.4.
    }

    if (velocityX < 0) {
      currentScale = 1; // Set the scale to the right.
    } else if (velocityX > 0) {
      currentScale = -1; // Set the scale to the left.
    }

    scale(currentScale, 1); // Scale the sprite.

    //Draw the sprite.
    if (currentScale < 0) {
      image(currentImage, -x - imageWidth/2f + view.x, y - imageHeight + h - view.y, imageWidth, imageHeight);
    } else {
      image(currentImage, x - view.x, y - imageHeight + h - view.y, imageWidth, imageHeight);
    }
    popMatrix(); // Pop the original matrix.
  }
}
