import java.util.*;

boolean KEY_A, KEY_B, KEY_C, KEY_D, KEY_E, KEY_F, KEY_G, KEY_H, KEY_I, KEY_J, KEY_K, KEY_L, KEY_M, KEY_N, KEY_O, KEY_P, KEY_Q, KEY_R, KEY_S, KEY_T, KEY_U, KEY_V, KEY_W, KEY_X, KEY_Y, KEY_Z, KEY_1, KEY_2, KEY_3, KEY_4, KEY_5, KEY_6, KEY_7, KEY_8, KEY_9, KEY_0, KEY_UP, KEY_LEFT, KEY_RIGHT, KEY_DOWN, KEY_SHIFT, KEY_SPACE;

void keyPressed() {
  if (key == 'a')
    KEY_A = true;
  else if (key == 'b')
    KEY_B = true;
  else if (key == 'c')
    KEY_C = true;
  else if (key == 'd')
    KEY_D = true;
  else if (key == 'e')
    KEY_E = true;
  else if (key == 'f')
    KEY_F = true;
  else if (key == 'g')
    KEY_G = true;
  else if (key == 'h')
    KEY_H = true;
  else if (key == 'i')
    KEY_I = true;
  else if (key == 'j')
    KEY_J = true;
  else if (key == 'k')
    KEY_K = true;
  else if (key == 'l')
    KEY_L = true;
  else if (key == 'm')
    KEY_M = true;
  else if (key == 'n')
    KEY_N = true;
  else if (key == 'o')
    KEY_O = true;
  else if (key == 'p')
    KEY_P = true;
  else if (key == 'q')
    KEY_Q = true;
  else if (key == 'r')
    KEY_R = true;
  else if (key == 's')
    KEY_S = true;
  else if (key == 't')
    KEY_T = true;
  else if (key == 'u')
    KEY_U = true;
  else if (key == 'v')
    KEY_V = true;
  else if (key == 'w')
    KEY_W = true;
  else if (key == 'x')
    KEY_X = true;
  else if (key == 'y')
    KEY_Y = true;
  else if (key == 'z')
    KEY_Z = true;
  else if (key == '1')
    KEY_1 = true;
  else if (key == '2')
    KEY_2 = true;
  else if (key == '3')
    KEY_3 = true;
  else if (key == '4')
    KEY_4 = true;
  else if (key == '5')
    KEY_5 = true;
  else if (key == '6')
    KEY_6 = true;
  else if (key == '7')
    KEY_7 = true;
  else if (key == '8')
    KEY_8 = true;
  else if (key == '9')
    KEY_9 = true;
  else if (key == '0')
    KEY_0 = true;
  else if (key == ' ')
    KEY_SPACE = true;
  else if (key == CODED){
    if (keyCode == UP)
      KEY_UP = true;
    else if (keyCode == LEFT)
      KEY_LEFT = true;
    else if (keyCode == RIGHT)
      KEY_RIGHT = true;
    else if (keyCode == DOWN)
      KEY_DOWN = true;
    else if (keyCode == SHIFT)
      KEY_SHIFT = true;
  }
}

void keyReleased() {
  if (key == 'a')
    KEY_A = false;
  else if (key == 'b')
    KEY_B = false;
  else if (key == 'c')
    KEY_C = false;
  else if (key == 'd')
    KEY_D = false;
  else if (key == 'e')
    KEY_E = false;
  else if (key == 'f')
    KEY_F = false;
  else if (key == 'g')
    KEY_G = false;
  else if (key == 'h')
    KEY_H = false;
  else if (key == 'i')
    KEY_I = false;
  else if (key == 'j')
    KEY_J = false;
  else if (key == 'k')
    KEY_K = false;
  else if (key == 'l')
    KEY_L = false;
  else if (key == 'm')
    KEY_M = false;
  else if (key == 'n')
    KEY_N = false;
  else if (key == 'o')
    KEY_O = false;
  else if (key == 'p')
    KEY_P = false;
  else if (key == 'q')
    KEY_Q = false;
  else if (key == 'r')
    KEY_R = false;
  else if (key == 's')
    KEY_S = false;
  else if (key == 't')
    KEY_T = false;
  else if (key == 'u')
    KEY_U = false;
  else if (key == 'v')
    KEY_V = false;
  else if (key == 'w')
    KEY_W = false;
  else if (key == 'x')
    KEY_X = false;
  else if (key == 'y')
    KEY_Y = false;
  else if (key == 'z')
    KEY_Z = false;
  else if (key == '1')
    KEY_1 = false;
  else if (key == '2')
    KEY_2 = false;
  else if (key == '3')
    KEY_3 = false;
  else if (key == '4')
    KEY_4 = false;
  else if (key == '5')
    KEY_5 = false;
  else if (key == '6')
    KEY_6 = false;
  else if (key == '7')
    KEY_7 = false;
  else if (key == '8')
    KEY_8 = false;
  else if (key == '9')
    KEY_9 = false;
  else if (key == '0')
    KEY_0 = false;
  else if (key == CODED){
    if (keyCode == UP)
      KEY_UP = false;
    else if (keyCode == LEFT)
      KEY_LEFT = false;
    else if (keyCode == RIGHT)
      KEY_RIGHT = false;
    else if (keyCode == DOWN)
      KEY_DOWN = false;
    else if (keyCode == SHIFT)
      KEY_SHIFT = false;
  }
}

class Entity extends Object {
  UUID id;
  private List<EntityComponent> components;

  int sprite;
  SpriteSheet spritesheet;
  Physicsbody physicsbody;
  Collider collider;
  CollisionMask mask;

  Entity(float _x, float _y, float _w, float _h, SpriteSheet _spritesheet) {
    super(_x, _y, _w, _h);
    spritesheet = _spritesheet;
    id = UUID.randomUUID();
    components = new ArrayList<EntityComponent>();
  }

  void addComponent(EntityComponent eC) {
    eC.entity = this;
    components.add(eC);
    if (eC instanceof Physicsbody) {
      physicsbody = (Physicsbody)eC;
    } else if (eC instanceof Collider) {
      collider = (Collider)eC;
    } else if (eC instanceof CollisionMask) {
      mask = (CollisionMask)eC;
    }
  }

  void removeComponent(int index) {
    EntityComponent eC = components.get(index);
    if (eC instanceof Physicsbody) {
      physicsbody = null;
    } else if (eC instanceof Physicsbody) {
      collider = null;
    } else if (eC instanceof CollisionMask) {
      mask = null;
    }
    components.remove(index);
  }

  void removeComponent(EntityComponent eC) {
    components.remove(eC);
    if (eC instanceof Physicsbody) {
      physicsbody = null;
    } else if (eC instanceof Physicsbody) {
      collider = null;
    } else if (eC instanceof CollisionMask) {
      mask = null;
    }
  }

  EntityComponent getComponent(Class type) {
    for (EntityComponent eC : components) {
      if (type.isInstance(eC)) {
        return eC;
      }
    }
    return null;
  }

  void setSprite(int index) {
    spritesheet.setSprite(index);
  }

  void setSprite(String title) {
    spritesheet.setSprite(title);
  }

  void display(PVector cam) {
    spritesheet.drawSprite(position.x - cam.x, position.y - cam.y, size.x, size.y);
  }

  void update() {
    for (EntityComponent eC : components) {
      eC.update();
    }
    lateUpdate();
  }
  
  void lateUpdate(){}

  PVector getVelocity() {
    if (physicsbody != null) {
      return physicsbody.velocity.copy();
    }
    return new PVector();
  }
}

abstract class EntityComponent {
  UUID id;
  Entity entity;
  boolean enabled;

  EntityComponent() {
    id = UUID.randomUUID();
    enabled = true;
  }

  void enable() {
    enabled = true;
  }

  void disable() {
    enabled = false;
  }

  abstract void update();
}

class Physicsbody extends EntityComponent {
  PVector velocity, acceleration;
  float drag;
  boolean locked;

  Physicsbody() {
    super();
    drag = 10;
    velocity = ZERO.copy();
    acceleration = ZERO.copy();
  }

  Physicsbody(float _drag, boolean _locked) {
    super();
    drag = _drag;
    locked = _locked;
    velocity = ZERO.copy();
    acceleration = ZERO.copy();
  }

  void update() {
    if (!locked) {
      velocity.add(acceleration);
      entity.position.add(velocity);

      velocity.mult(1/drag);
      velocity.x *= FRICTION;
      velocity.add(GRAVITY);

      zeroLowVelX();
    }
    acceleration.set(0, 0);
  }

  void addForce(PVector force) {
    acceleration.add(force);
  }

  void addForce(float x, float y) {
    acceleration.add(new PVector(x, y));
  }

  void addImpulseForce(PVector force) {
    velocity.add(force);
  }

  void addImpulseForce(float x, float y) {
    velocity.x += x;
    velocity.y += y;
  }

  void zeroLowVelX() {
    if (abs(velocity.x) < 0.01) {
      velocity.x = 0;
    }
  }
}

class Collider extends EntityComponent {
  PVector size, halfSize;
  Collision collisions;
  int layer;
  float material;
  boolean collisionOn;

  Collider(float x, float y, float _material) {
    super();
    size = new PVector(x, y);
    halfSize = new PVector(x/2, y/2);
    collisions = new Collision();
    material = _material;
    collisionOn = true;
  }

  Collider(PVector _size, float _material) {
    size = _size.copy(); 
    halfSize = new PVector(_size.x/2, _size.y/2);
    material = _material;
    collisionOn = true;
  }

  void update() {
    collisions.off();
  }
}

class CollisionMask extends EntityComponent {
  List<Integer> layers;

  CollisionMask(int ... _layers) {
    layers = new ArrayList();
    for (int layer : _layers) {
      layers.add(layer);
    }
  }

  void add(int layer) {
    if (!layers.contains(layer)) {
      layers.add(layer);
    }
  }

  boolean contains(int layer) {
    return layers.contains(layer);
  }

  void update() {
  }
}

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

class Collision {
  boolean top;
  boolean bottom;
  boolean left;
  boolean right;

  void off() {
    top = false;
    bottom = false;
    left = false;
    right = false;
  }

  void off(boolean _top, boolean _bottom, boolean _left, boolean _right) {
    top = _top;
    bottom = _bottom;
    left = _left;
    right = _right;
  }
  
  boolean none(){
    println();
    return top | bottom | left | right;
  }
  
  public String toString(){
    return "top:" + top + " bottom:" + bottom + " left:" + left + " right:" + right;
  }
}

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

PVector GRAVITY = new PVector(0, 0.8);
float FRICTION = 0.9;

PVector ZERO = new PVector(0, 0);

class World extends Object {

  List<Entity> entities;
  PVector cam;

  World() {
    super(0, 0, width, height); 
    entities = new ArrayList<Entity>();
    cam = ZERO.copy();
  }

  World(float _w, float _h) {
    super(0, 0, _w, _h);
    entities = new ArrayList<Entity>();
    cam = ZERO.copy();
  }

  void addEntity(Entity e) {
    entities.add(e);
  }

  void update() {
    for (Entity e1 : entities) {
      e1.update();
      for (Entity e2 : entities) {
        if (e1.id != e2.id) {
          checkCollisions(e1, e2);
        }
      }
    }
  }

  void display() {
    for (Entity e : entities) {
      e.display(cam);
    }
  }

  void checkCollisions(Entity e1, Entity e2) {
    if (!e1.enabled || e1.collider == null || !e1.collider.enabled
      || !e2.enabled || e2.collider == null || !e2.collider.enabled
      || !e1.collider.collisionOn
      || (e1.physicsbody != null && e1.physicsbody.locked)
      || (e1.mask != null && !e1.mask.contains(e2.collider.layer))
      || (e2.mask != null && !e2.mask.contains(e1.collider.layer))) {
      return;
    }

    // Get the x and y distance between the objects.
    float distanceX = e1.position.x - e2.position.x;
    float distanceY = e1.position.y - e2.position.y;

    // Get the half widths combined and half heights combined.
    float bothHalfWidths = e1.collider.halfSize.x + e2.collider.halfSize.x;
    float bothHalfHeights = e1.collider.halfSize.y + e2.collider.halfSize.y;

    float bothMaterials = e1.collider.material + e2.collider.material;

    // Check if either the x and y overlap.
    if (abs(distanceX) < bothHalfWidths) {
      if (abs(distanceY) < bothHalfHeights) {
        float overlapX = bothHalfWidths - abs(distanceX);
        float overlapY = bothHalfHeights - abs(distanceY);

        // Perform checks to determine where collision occured.
        if (overlapX >= overlapY) {
          if (distanceY > 0) {
            if (e1.physicsbody != null) {
              e1.position.y += overlapY * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.y < 0)
                e1.physicsbody.velocity.y = -e1.physicsbody.velocity.y * bothMaterials;
            }
            e1.collider.collisions.top = true;
          } else {
            if (e1.physicsbody != null) {
              e1.position.y -= overlapY * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.y > 0)
                e1.physicsbody.velocity.y = -e1.physicsbody.velocity.y * bothMaterials;
            }
            e1.collider.collisions.bottom = true;
          }
        } else {
          if (distanceX > 0) {
            if (e1.physicsbody != null) {
              e1.position.x += overlapX * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.x < 0)
                e1.physicsbody.velocity.x = -e1.physicsbody.velocity.x * bothMaterials;
            }
            e1.collider.collisions.left = true;
          } else {
            if (e1.physicsbody != null) {
              e1.position.x -= overlapX * (0.1 + bothMaterials);
              if (e1.physicsbody.velocity.x > 0)
                e1.physicsbody.velocity.x = -e1.physicsbody.velocity.x * bothMaterials;
            }
            e1.collider.collisions.right = true;
          }
        }
      }
    }
  }
}

class Camera extends Object {

  World world;

  Camera(World _world) {
    super(0, 0, width, height); 
    world = _world;
  }

  void update(Object object) {
    position.set(floor(object.position.x + (object.halfSize.x) - (size.x / 2)), floor(object.position.y + (object.halfSize.y) - (size.y / 2)));

    if (position.x < world.position.x) {
      position.x = world.position.x;
    }
    if (position.y < world.position.y) {
      position.y = world.position.y;
    }
    if (position.x + size.x > world.position.x + world.size.x) {
      position.x = world.position.x + world.size.x - size.x;
    }
    if (position.y + size.y > world.size.y) {
      position.y = world.size.y - size.y;
    }

    world.cam.set(position);
  }

  void setWorld(World _world) {
    world = _world;
  }
}
