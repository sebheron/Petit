class SpriteSheet {  

  private PImage[] sprites;

  private String[] names;

  private int spriteCount;

  private int spriteWidth, spriteHeight;

  private int spriteIndex;

  private PVector offset;

  SpriteSheet(PImage[] _sprites, String[] _names, int _spriteCount, int _spriteWidth, int _spriteHeight, int _spriteIndex, PVector _offset) {
    sprites = _sprites;
    names = _names;
    spriteCount = _spriteCount;
    spriteWidth = _spriteWidth;
    spriteHeight = _spriteHeight;
    spriteIndex = _spriteIndex;
    offset = _offset.copy();
  }

  SpriteSheet(String fileLocation, int _spriteWidth, int _spriteHeight) {
    spriteWidth = _spriteWidth;
    spriteHeight = _spriteHeight;
    offset = new PVector(-0.5, -0.5);
    PImage sheet = loadImage(fileLocation);
    int in = 0;
    spriteCount = (sheet.width / _spriteWidth) * (sheet.height / _spriteHeight);
    sprites = new PImage[spriteCount];
    names = new String[spriteCount];
    for (int y = 0; y < sheet.height; y += _spriteHeight) {
      for (int x = 0; x < sheet.width; x += _spriteWidth) {
        sprites[in] = sheet.get(x, y, _spriteWidth, _spriteHeight);
        in++;
      }
    }
  }

  int getSpriteCount() {
    return spriteCount;
  }

  int getSpriteWidth() {
    return spriteWidth;
  }

  int getSpriteHeight() {
    return spriteHeight;
  }

  void offset(float x, float y) {
    offset.set(-0.5 + (x/2), -0.5 + (y/2));
  }

  void setSprite(int index) {
    if (index >= 0 & index < sprites.length) {
      spriteIndex = index;
    }
  }

  void setSprite(String title) {
    int index = titleToIndex(title);
    if (index >= 0 & index < sprites.length) {
      spriteIndex = index;
    }
  }

  void drawSprite(float x, float y) {
    image(sprites[spriteIndex], x + (offset.x * spriteWidth), y + (offset.y * spriteHeight));
  }

  void drawSprite(float x, float y, float w, float h) {
    image(sprites[spriteIndex], x + (offset.x * w), y + (offset.y * h), w, h);
  }

  void animateSprite() {
  }

  void titleSprite(int index, String title) {
    names[index] = title;
  }

  int titleToIndex(String title) {
    for (int i = 0; i < names.length; i++) {
      if (names[i].equals(title)) {
        return i;
      }
    }
    return -1;
  }

  PImage getSprite(int index) {
    if (index > 0 & index < sprites.length) {
      return sprites[index];
    }
    return null;
  }

  PImage getSprite(String title) {
    int index = titleToIndex(title);
    if (index > 0 & index < sprites.length) {
      return sprites[index];
    }
    return null;
  }

  //Just a shallow copy!
  SpriteSheet copy() {
    return new SpriteSheet(sprites, names, spriteCount, spriteWidth, spriteHeight, spriteIndex, offset);
  }
}
