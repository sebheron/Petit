// Contains just info for x and y position or in some cases scale.
class Vector2{
  float x, y;
  
  Vector2(){
    x = 0;
    y = 0;
  }
  
  Vector2(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void addTo(Vector2 v2){
    x += v2.x;
    y += v2.y;
  }
  
  void addTo(Vector2Int v2){
    x += v2.x;
    y += v2.y;
  }
  
  Vector2 add(Vector2 v2){
    return new Vector2(x + v2.x, y + v2.y);
  }
  
  Vector2 add(Vector2Int v2){
    return new Vector2(x + v2.x, y + v2.y);
  }
  
  Vector2 clone(){
    return new Vector2(x, y); 
  }
}

class Vector2Int{
  int x, y;
  
  Vector2Int(){
    x = 0;
    y = 0;
  }
  
  Vector2Int(int _x, int _y){
    x = _x;
    y = _y;
  }
  
  void addTo(Vector2Int v2){
    x += v2.x;
    y += v2.y;
  }
  
  Vector2Int add(Vector2Int v2){
    return new Vector2Int(x + v2.x, y + v2.y);
  }
  
  Vector2Int clone(){
    return new Vector2Int(x, y); 
  }
}

class Rect {
  float x, y, w, h;
  float oX, oY;
  
  Rect(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    oX = oY = -0.5;
  }
  
  boolean Intersects(Rect r){
    Vector2 max = new Vector2(x + w + (oX * w), y + h + (oY * w));
    Vector2 rMax = new Vector2(r.x + r.w + (r.oX * w), r.y + r.h + (r.oY * h));
    
    if(max.x < r.x + (r.oX * w) | x + (oX * w) > rMax.x)
      return false;
    if(max.y < r.y + (r.oY * w) | y + (oY * w) > rMax.y)
      return false;
      
    return true;
  }
  
  void display(){
    rect(x + (oX * w), y + (oY * w), w, h);
  }
  
  void offset(float x, float y){
    oX = -0.5 + (x/2);
    oY = -0.5 + (y/2);
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
