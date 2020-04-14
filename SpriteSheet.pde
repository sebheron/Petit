class SpriteSheet {  

  private PImage[] sprites;
  
  private int spriteCount;
  
  private int spriteWidth, spriteHeight;
  
  private int spriteIndex;
  
  private float oX, oY;

  SpriteSheet(String fileLocation, int _spriteWidth, int _spriteHeight) {
    spriteWidth = _spriteWidth;
    spriteHeight = _spriteHeight;
    oX = oY = -0.5;
    
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
  
  void offset(float x, float y){
    oX = -0.5 + (x/2);
    oY = -0.5 + (y/2);
  }
  
  void drawSprite(float x, float y){
    image(sprites[spriteIndex], x + (oX * spriteWidth), y + (oY * spriteHeight));
  }
  
  void drawSprite(int index, float x, float y){
    spriteIndex = index;
    image(sprites[spriteIndex], x + (oX * spriteWidth), y + (oY * spriteHeight));
  }
  
  void drawSprite(int index, float x, float y, float w, float h){
    spriteIndex = index;
    image(sprites[spriteIndex], x + (oX * w), y + (oY * h), w , h);
  }
}
