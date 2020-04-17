class Rect {
  PVector position, size, halfSize;

  Rect(float _x, float _y, float _w, float _h) {
    position = new PVector(_x, _y);
    size = new PVector(_w, _h);
    halfSize = new PVector(_w/2, _h/2);
  }
}

class Object extends Rect {
  boolean enabled;

  Object(float _x, float _y, float _w, float _h) {
    super(_x, _y, _w, _h);
    enabled = true;
  }
}
