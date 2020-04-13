class SpriteSheet {  

  PImage[] sprites;
  int count;

  SpriteSheet(String fileLocation, int individualWidth, int individualHeight) {
    PImage sheet = loadImage(fileLocation);
    int in = 0;
    count = (sheet.width / individualWidth) * (sheet.height / individualHeight);
    sprites = new PImage[count];
    for (int y = 0; y < sheet.height; y += individualHeight) {
      for (int x = 0; x < sheet.width; x += individualWidth) {
        sprites[in] = sheet.get(x, y, individualWidth, individualHeight);
        in++;
      }
    }
  }
}
