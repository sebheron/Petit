class Rect {
  float x, y, w, h;
  
  Rect(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
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
