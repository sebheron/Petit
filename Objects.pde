// The original object class contains only information for the x and y position, the width and height of the object, half width and height and whether the object is enabled.
// This does not contain any image data.
class Object{
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

// The image object class extends on object to also include image data, such as the image, the width and height of the image, whether it is visible.
class ImageObject extends Object {

  PImage objectImage;
  float imageWidth, imageHeight;
  boolean visible;

  ImageObject(float _x, float _y, float _w, float _h, PImage _image, float _imageWidth, float _imageHeight) {
    super(_x, _y, _w, _h);
    objectImage = _image;
    imageWidth = _imageWidth;
    imageHeight = _imageHeight;
    visible = true;
  }

  void display() {
    if (visible) {
      drawObject();
    }
  };

  // Draw object is empty as this is overriden in its sub classes.
  void drawObject() {
  };
}

// The multi image class is an extension of the image object class.
// NOTE: In this case the multi image object classes sub classes still use the original image objects 'objectImage' variable,
// however with time to refactor this, this class could be a subtype of object and use images[0] as the replacement objectImage variable.
class MultiImageObject extends ImageObject {
  PImage[] images;
  float frame;

  MultiImageObject(float _x, float _y, float _w, float _h, PImage _image, PImage[] _images, float _imageWidth, float _imageHeight) {
    super(_x, _y, _w, _h, _image, _imageWidth, _imageHeight);   
    images = _images;
  }
}
