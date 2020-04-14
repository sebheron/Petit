class Rect {
  float x, y, w, h;
  float halfWidth, halfHeight;
  
  Rect(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    halfWidth = _w/2;
    halfHeight = _h/2;
  }
}

class Object extends Rect{
  boolean enabled;
  
  Object(float _x, float _y, float _w, float _h){
    super(_x, _y, _w, _h);
    enabled = true;
  }
}
