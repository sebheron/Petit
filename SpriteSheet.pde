class SpriteSheet {  

  private PImage[] sprites;
  
  private int spriteCount;
  
  private int spriteWidth, spriteHeight;
  
  private int spriteIndex;
  
  private float aX, aY;

  SpriteSheet(String fileLocation, int _spriteWidth, int _spriteHeight) {
    spriteWidth = _spriteWidth;
    spriteHeight = _spriteHeight;
    
    PImage sheet = loadImage(fileLocation);
    int in = 0;
    spriteCount = (sheet.width / _spriteWidth) * (sheet.height / _spriteHeight);
    sprites = new PImage[spriteCount];
    for (int y = 0; y < sheet.height; y += _spriteHeight) {
      for (int x = 0; x < sheet.width; x += _spriteWidth) {
        sprites[in] = sheet.get(x, y, _spriteWidth, _spriteHeight);
        in++;
      }
    }
  }
  
  int getSpriteCount(){
    return spriteCount;
  }
  
  int getSpriteWidth(){
    return spriteWidth; 
  }
  
  int getSpriteHeight(){
    return spriteHeight; 
  }
  
  void align(int x){
    if (x == RIGHT){
      aX = 0;
    }
    else if (x == CENTER){
      aX = -0.5;
    }
    else if (x == LEFT){
      aX = -1;
    }
  }
  
  void align(int x, int y){
    if (y == TOP){
      aY = -1;
    }
    else if (y == CENTER){
      aY = -0.5;
    }
    else if (y == BOTTOM){
      aY = 0;
    }
    
    align(x);
  }
  
  void drawSprite(float x, float y){
    image(sprites[spriteIndex], x + (aX * spriteWidth), y + (aY * spriteHeight));
  }
  
  void drawSprite(int index, float x, float y){
    spriteIndex = index;
    image(sprites[spriteIndex], x + (aX * spriteWidth), y + (aY * spriteHeight));
  }
  
  void drawSprite(int index, float x, float y, float w, float h){
    spriteIndex = index;
    image(sprites[spriteIndex], x + (aX * w), y + (aY * h), w , h);
  }
}
