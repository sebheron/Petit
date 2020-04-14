// Contains just info for x and y position or in some cases scale.
class Vector2{
  float x, y;
  
  Vector2(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void addTo(Vector2 v2){
    x += v2.x;
    y += v2.y;
  }
  
  Vector2 add(Vector2 v2){
    return new Vector2(x + v2.x, y + v2.y);
  }
}

// The object class contains information for the x and y position, the width and height of the object, half width and height and whether the object is enabled.
// This does not contain any image data.
class Object {
  float x, y, w, h;
  float halfWidth, halfHeight;
  boolean enabled;
  
  Object(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    halfWidth = _w/2;
    halfHeight = _h/2;
    enabled = true;
  }
}
