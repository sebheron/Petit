// The collectable object extends the MultiImageObject class and adds a sway factor and collectable type of.
class Collectable extends MultiImageObject {
  int swayFactor;
  CollectableType typeOf;
  
  Collectable(float _x, float _y, float _w, float _h, PImage[] _images, int _swayFactor, CollectableType _typeOf){
    super(_x, _y, _w, _h, _images[0], _images, _w, _h);
    swayFactor = _swayFactor;
    typeOf = _typeOf;
  }
  
  @Override
  void drawObject(){
    // Draw the collectable and sway it according to a sin value of the current frame.
    float sway = sin(frame) * swayFactor;
    objectImage = images[round(frame) % 5];
    image(objectImage, x  - camera.x, y  - camera.y + sway, w, h);
    frame += 0.1;
  }
}

// Using enums to determine which type of collectable has been collected.
enum CollectableType {
  PAGE,
  ACORN
}
