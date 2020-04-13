class Point{
  float x, y;
  
  Point(float _x, float _y){
    x = _x;
    y = _y;
  }
}

// The object class contains information for the x and y position, the width and height of the object, half width and height and whether the object is enabled.
// This does not contain any image data.
class Object extends Point{
  float w, h;
  float halfWidth, halfHeight;
  boolean enabled;
  
  Object(float _x, float _y, float _w, float _h){
    super(_x, _y);
    w = _w;
    h = _h;
    halfWidth = _w/2;
    halfHeight = _h/2;
    enabled = true;
  }
}

// The image class is an extension of the object class.
class ImageObject extends Object {
  PImage[] images;
  float frame;
  float imageWidth, imageHeight;
  boolean visible;

  ImageObject(float _x, float _y, float _w, float _h, PImage[] _images, float _imageWidth, float _imageHeight) {
    super(_x, _y, _w, _h);   
    images = _images;
    imageWidth = _imageWidth;
    imageHeight = _imageHeight;
    visible = true;
  }
  
  void display() {
    if (visible) {
      drawObject();
    }
  }
  
  void drawObject(){}
}
