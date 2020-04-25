import java.util.*;

void draw(){
  update();
  KEY_A_DOWN = false;
  KEY_A_UP = false;
  KEY_B_DOWN = false;
  KEY_B_UP = false;
  KEY_C_DOWN = false;
  KEY_C_UP = false;
  KEY_D_DOWN = false;
  KEY_D_UP = false;
  KEY_E_DOWN = false;
  KEY_E_UP = false;
  KEY_F_DOWN = false;
  KEY_F_UP = false;
  KEY_G_DOWN = false;
  KEY_G_UP = false;
  KEY_H_DOWN = false;
  KEY_H_UP = false;
  KEY_I_DOWN = false;
  KEY_I_UP = false;
  KEY_J_DOWN = false;
  KEY_J_UP = false;
  KEY_K_DOWN = false;
  KEY_K_UP = false;
  KEY_L_DOWN = false;
  KEY_L_UP = false;
  KEY_M_DOWN = false;
  KEY_M_UP = false;
  KEY_N_DOWN = false;
  KEY_N_UP = false;
  KEY_O_DOWN = false;
  KEY_O_UP = false;
  KEY_P_DOWN = false;
  KEY_P_UP = false;
  KEY_Q_DOWN = false;
  KEY_Q_UP = false;
  KEY_R_DOWN = false;
  KEY_R_UP = false;
  KEY_S_DOWN = false;
  KEY_S_UP = false;
  KEY_T_DOWN = false;
  KEY_T_UP = false;
  KEY_U_DOWN = false;
  KEY_U_UP = false;
  KEY_V_DOWN = false;
  KEY_V_UP = false;
  KEY_W_DOWN = false;
  KEY_W_UP = false;
  KEY_X_DOWN = false;
  KEY_X_UP = false;
  KEY_Y_DOWN = false;
  KEY_Y_UP = false;
  KEY_Z_DOWN = false;
  KEY_Z_UP = false;
  KEY_1_DOWN = false;
  KEY_1_UP = false;
  KEY_2_DOWN = false;
  KEY_2_UP = false;
  KEY_3_DOWN = false;
  KEY_3_UP = false;
  KEY_4_DOWN = false;
  KEY_4_UP = false;
  KEY_5_DOWN = false;
  KEY_5_UP = false;
  KEY_6_DOWN = false;
  KEY_6_UP = false;
  KEY_7_DOWN = false;
  KEY_7_UP = false;
  KEY_8_DOWN = false;
  KEY_8_UP = false;
  KEY_9_DOWN = false;
  KEY_9_UP = false;
  KEY_0_DOWN = false;
  KEY_0_UP = false;
  KEY_UP_DOWN = false;
  KEY_UP_UP = false;
  KEY_LEFT_DOWN = false;
  KEY_LEFT_UP = false;
  KEY_RIGHT_DOWN = false;
  KEY_RIGHT_UP = false;
  KEY_DOWN_DOWN = false;
  KEY_DOWN_UP = false;
  KEY_SHIFT_DOWN = false;
  KEY_SHIFT_UP = false;
  KEY_SPACE_DOWN = false;
  KEY_SPACE_UP = false;
  KEY_TAB_DOWN = false;
  KEY_TAB_UP = false;
}


boolean KEY_A, KEY_B, KEY_C, KEY_D, KEY_E, KEY_F, KEY_G, KEY_H, KEY_I, KEY_J, KEY_K, KEY_L, KEY_M, KEY_N, KEY_O, KEY_P, KEY_Q, KEY_R, KEY_S, KEY_T, KEY_U, KEY_V, KEY_W, KEY_X, KEY_Y, KEY_Z, KEY_1, KEY_2, KEY_3, KEY_4, KEY_5, KEY_6, KEY_7, KEY_8, KEY_9, KEY_0, KEY_UP, KEY_LEFT, KEY_RIGHT, KEY_DOWN, KEY_SHIFT, KEY_SPACE, KEY_TAB, KEY_BACKSPACE, KEY_ENTER;
boolean KEY_A_DOWN, KEY_B_DOWN, KEY_C_DOWN, KEY_D_DOWN, KEY_E_DOWN, KEY_F_DOWN, KEY_G_DOWN, KEY_H_DOWN, KEY_I_DOWN, KEY_J_DOWN, KEY_K_DOWN, KEY_L_DOWN, KEY_M_DOWN, KEY_N_DOWN, KEY_O_DOWN, KEY_P_DOWN, KEY_Q_DOWN, KEY_R_DOWN, KEY_S_DOWN, KEY_T_DOWN, KEY_U_DOWN, KEY_V_DOWN, KEY_W_DOWN, KEY_X_DOWN, KEY_Y_DOWN, KEY_Z_DOWN, KEY_1_DOWN, KEY_2_DOWN, KEY_3_DOWN, KEY_4_DOWN, KEY_5_DOWN, KEY_6_DOWN, KEY_7_DOWN, KEY_8_DOWN, KEY_9_DOWN, KEY_0_DOWN, KEY_UP_DOWN, KEY_LEFT_DOWN, KEY_RIGHT_DOWN, KEY_DOWN_DOWN, KEY_SHIFT_DOWN, KEY_SPACE_DOWN, KEY_TAB_DOWN, KEY_BACKSPACE_DOWN, KEY_ENTER_DOWN;
boolean KEY_A_UP, KEY_B_UP, KEY_C_UP, KEY_D_UP, KEY_E_UP, KEY_F_UP, KEY_G_UP, KEY_H_UP, KEY_I_UP, KEY_J_UP, KEY_K_UP, KEY_L_UP, KEY_M_UP, KEY_N_UP, KEY_O_UP, KEY_P_UP, KEY_Q_UP, KEY_R_UP, KEY_S_UP, KEY_T_UP, KEY_U_UP, KEY_V_UP, KEY_W_UP, KEY_X_UP, KEY_Y_UP, KEY_Z_UP, KEY_1_UP, KEY_2_UP, KEY_3_UP, KEY_4_UP, KEY_5_UP, KEY_6_UP, KEY_7_UP, KEY_8_UP, KEY_9_UP, KEY_0_UP, KEY_UP_UP, KEY_LEFT_UP, KEY_RIGHT_UP, KEY_DOWN_UP, KEY_SHIFT_UP, KEY_SPACE_UP, KEY_TAB_UP, KEY_BACKSPACE_UP, KEY_ENTER_UP;

void keyPressed(){
  if (key == 'a')
   {
    KEY_A = true;
    KEY_A_DOWN = true;
   }
  else if (key == 'b')
   {
    KEY_B = true;
    KEY_B_DOWN = true;
   }
  else if (key == 'c')
   {
    KEY_C = true;
    KEY_C_DOWN = true;
   }
  else if (key == 'd')
   {
    KEY_D = true;
    KEY_D_DOWN = true;
   }
  else if (key == 'e')
   {
    KEY_E = true;
    KEY_E_DOWN = true;
   }
  else if (key == 'f')
   {
    KEY_F = true;
    KEY_F_DOWN = true;
   }
  else if (key == 'g')
   {
    KEY_G = true;
    KEY_G_DOWN = true;
   }
  else if (key == 'h')
   {
    KEY_H = true;
    KEY_H_DOWN = true;
   }
  else if (key == 'i')
   {
    KEY_I = true;
    KEY_I_DOWN = true;
   }
  else if (key == 'j')
   {
    KEY_J = true;
    KEY_J_DOWN = true;
   }
  else if (key == 'k')
   {
    KEY_K = true;
    KEY_K_DOWN = true;
   }
  else if (key == 'l')
   {
    KEY_L = true;
    KEY_L_DOWN = true;
   }
  else if (key == 'm')
   {
    KEY_M = true;
    KEY_M_DOWN = true;
   }
  else if (key == 'n')
   {
    KEY_N = true;
    KEY_N_DOWN = true;
   }
  else if (key == 'o')
   {
    KEY_O = true;
    KEY_O_DOWN = true;
   }
  else if (key == 'p')
   {
    KEY_P = true;
    KEY_P_DOWN = true;
   }
  else if (key == 'q')
   {
    KEY_Q = true;
    KEY_Q_DOWN = true;
   }
  else if (key == 'r')
   {
    KEY_R = true;
    KEY_R_DOWN = true;
   }
  else if (key == 's')
   {
    KEY_S = true;
    KEY_S_DOWN = true;
   }
  else if (key == 't')
   {
    KEY_T = true;
    KEY_T_DOWN = true;
   }
  else if (key == 'u')
   {
    KEY_U = true;
    KEY_U_DOWN = true;
   }
  else if (key == 'v')
   {
    KEY_V = true;
    KEY_V_DOWN = true;
   }
  else if (key == 'w')
   {
    KEY_W = true;
    KEY_W_DOWN = true;
   }
  else if (key == 'x')
   {
    KEY_X = true;
    KEY_X_DOWN = true;
   }
  else if (key == 'y')
   {
    KEY_Y = true;
    KEY_Y_DOWN = true;
   }
  else if (key == 'z')
   {
    KEY_Z = true;
    KEY_Z_DOWN = true;
   }
  else if (key == '1')
   {
    KEY_1 = true;
    KEY_1_DOWN = true;
   }
  else if (key == '2')
   {
    KEY_2 = true;
    KEY_2_DOWN = true;
   }
  else if (key == '3')
   {
    KEY_3 = true;
    KEY_3_DOWN = true;
   }
  else if (key == '4')
   {
    KEY_4 = true;
    KEY_4_DOWN = true;
   }
  else if (key == '5')
   {
    KEY_5 = true;
    KEY_5_DOWN = true;
   }
  else if (key == '6')
   {
    KEY_6 = true;
    KEY_6_DOWN = true;
   }
  else if (key == '7')
   {
    KEY_7 = true;
    KEY_7_DOWN = true;
   }
  else if (key == '8')
   {
    KEY_8 = true;
    KEY_8_DOWN = true;
   }
  else if (key == '9')
   {
    KEY_9 = true;
    KEY_9_DOWN = true;
   }
  else if (key == '0')
   {
    KEY_0 = true;
    KEY_0_DOWN = true;
   }
  else if (key == 'A')
   {
    KEY_A = true;
    KEY_A_DOWN = true;
   }
  else if (key == 'B')
   {
    KEY_B = true;
    KEY_B_DOWN = true;
   }
  else if (key == 'C')
   {
    KEY_C = true;
    KEY_C_DOWN = true;
   }
  else if (key == 'D')
   {
    KEY_D = true;
    KEY_D_DOWN = true;
   }
  else if (key == 'E')
   {
    KEY_E = true;
    KEY_E_DOWN = true;
   }
  else if (key == 'F')
   {
    KEY_F = true;
    KEY_F_DOWN = true;
   }
  else if (key == 'G')
   {
    KEY_G = true;
    KEY_G_DOWN = true;
   }
  else if (key == 'H')
   {
    KEY_H = true;
    KEY_H_DOWN = true;
   }
  else if (key == 'I')
   {
    KEY_I = true;
    KEY_I_DOWN = true;
   }
  else if (key == 'J')
   {
    KEY_J = true;
    KEY_J_DOWN = true;
   }
  else if (key == 'K')
   {
    KEY_K = true;
    KEY_K_DOWN = true;
   }
  else if (key == 'L')
   {
    KEY_L = true;
    KEY_L_DOWN = true;
   }
  else if (key == 'M')
   {
    KEY_M = true;
    KEY_M_DOWN = true;
   }
  else if (key == 'N')
   {
    KEY_N = true;
    KEY_N_DOWN = true;
   }
  else if (key == 'O')
   {
    KEY_O = true;
    KEY_O_DOWN = true;
   }
  else if (key == 'P')
   {
    KEY_P = true;
    KEY_P_DOWN = true;
   }
  else if (key == 'Q')
   {
    KEY_Q = true;
    KEY_Q_DOWN = true;
   }
  else if (key == 'R')
   {
    KEY_R = true;
    KEY_R_DOWN = true;
   }
  else if (key == 'S')
   {
    KEY_S = true;
    KEY_S_DOWN = true;
   }
  else if (key == 'T')
   {
    KEY_T = true;
    KEY_T_DOWN = true;
   }
  else if (key == 'U')
   {
    KEY_U = true;
    KEY_U_DOWN = true;
   }
  else if (key == 'V')
   {
    KEY_V = true;
    KEY_V_DOWN = true;
   }
  else if (key == 'W')
   {
    KEY_W = true;
    KEY_W_DOWN = true;
   }
  else if (key == 'X')
   {
    KEY_X = true;
    KEY_X_DOWN = true;
   }
  else if (key == 'Y')
   {
    KEY_Y = true;
    KEY_Y_DOWN = true;
   }
  else if (key == 'Z')
   {
    KEY_Z = true;
    KEY_Z_DOWN = true;
   }
  else if (key == ' ')
   {
    KEY_SPACE = true;
    KEY_SPACE_DOWN = true;
   }
  if (key == CODED){
    if (keyCode == TAB)
    {
      KEY_TAB = true;
      KEY_TAB_DOWN = true;
    }
    else if (keyCode == BACKSPACE)
    {
      KEY_BACKSPACE = true;
      KEY_BACKSPACE_DOWN = true;
    }
    else if (keyCode == ENTER)
    {
      KEY_ENTER = true;
      KEY_ENTER_DOWN = true;
    }
    else if (keyCode == SHIFT)
    {
      KEY_SHIFT = true;
      KEY_SHIFT_DOWN = true;
    }
    else if (keyCode == UP)
    {
      KEY_UP = true;
      KEY_UP_DOWN = true;
    }
    else if (keyCode == DOWN)
    {
      KEY_DOWN = true;
      KEY_DOWN_DOWN = true;
    }
    else if (keyCode == LEFT)
    {
      KEY_LEFT = true;
      KEY_LEFT_DOWN = true;
    }
    else if (keyCode == RIGHT)
    {
      KEY_RIGHT = true;
      KEY_RIGHT_DOWN = true;
    }
  }
}

void keyReleased(){
  if (key == 'a')
  {
    KEY_A = false;
    KEY_A_UP = true;
  }
  else if (key == 'b')
  {
    KEY_B = false;
    KEY_B_UP = true;
  }
  else if (key == 'c')
  {
    KEY_C = false;
    KEY_C_UP = true;
  }
  else if (key == 'd')
  {
    KEY_D = false;
    KEY_D_UP = true;
  }
  else if (key == 'e')
  {
    KEY_E = false;
    KEY_E_UP = true;
  }
  else if (key == 'f')
  {
    KEY_F = false;
    KEY_F_UP = true;
  }
  else if (key == 'g')
  {
    KEY_G = false;
    KEY_G_UP = true;
  }
  else if (key == 'h')
  {
    KEY_H = false;
    KEY_H_UP = true;
  }
  else if (key == 'i')
  {
    KEY_I = false;
    KEY_I_UP = true;
  }
  else if (key == 'j')
  {
    KEY_J = false;
    KEY_J_UP = true;
  }
  else if (key == 'k')
  {
    KEY_K = false;
    KEY_K_UP = true;
  }
  else if (key == 'l')
  {
    KEY_L = false;
    KEY_L_UP = true;
  }
  else if (key == 'm')
  {
    KEY_M = false;
    KEY_M_UP = true;
  }
  else if (key == 'n')
  {
    KEY_N = false;
    KEY_N_UP = true;
  }
  else if (key == 'o')
  {
    KEY_O = false;
    KEY_O_UP = true;
  }
  else if (key == 'p')
  {
    KEY_P = false;
    KEY_P_UP = true;
  }
  else if (key == 'q')
  {
    KEY_Q = false;
    KEY_Q_UP = true;
  }
  else if (key == 'r')
  {
    KEY_R = false;
    KEY_R_UP = true;
  }
  else if (key == 's')
  {
    KEY_S = false;
    KEY_S_UP = true;
  }
  else if (key == 't')
  {
    KEY_T = false;
    KEY_T_UP = true;
  }
  else if (key == 'u')
  {
    KEY_U = false;
    KEY_U_UP = true;
  }
  else if (key == 'v')
  {
    KEY_V = false;
    KEY_V_UP = true;
  }
  else if (key == 'w')
  {
    KEY_W = false;
    KEY_W_UP = true;
  }
  else if (key == 'x')
  {
    KEY_X = false;
    KEY_X_UP = true;
  }
  else if (key == 'y')
  {
    KEY_Y = false;
    KEY_Y_UP = true;
  }
  else if (key == 'z')
  {
    KEY_Z = false;
    KEY_Z_UP = true;
  }
  else if (key == '1')
  {
    KEY_1 = false;
    KEY_1_UP = true;
  }
  else if (key == '2')
  {
    KEY_2 = false;
    KEY_2_UP = true;
  }
  else if (key == '3')
  {
    KEY_3 = false;
    KEY_3_UP = true;
  }
  else if (key == '4')
  {
    KEY_4 = false;
    KEY_4_UP = true;
  }
  else if (key == '5')
  {
    KEY_5 = false;
    KEY_5_UP = true;
  }
  else if (key == '6')
  {
    KEY_6 = false;
    KEY_6_UP = true;
  }
  else if (key == '7')
  {
    KEY_7 = false;
    KEY_7_UP = true;
  }
  else if (key == '8')
  {
    KEY_8 = false;
    KEY_8_UP = true;
  }
  else if (key == '9')
  {
    KEY_9 = false;
    KEY_9_UP = true;
  }
  else if (key == '0')
  {
    KEY_0 = false;
    KEY_0_UP = true;
  }
  else if (key == 'A')
  {
    KEY_A = false;
    KEY_A_UP = true;
  }
  else if (key == 'B')
  {
    KEY_B = false;
    KEY_B_UP = true;
  }
  else if (key == 'C')
  {
    KEY_C = false;
    KEY_C_UP = true;
  }
  else if (key == 'D')
  {
    KEY_D = false;
    KEY_D_UP = true;
  }
  else if (key == 'E')
  {
    KEY_E = false;
    KEY_E_UP = true;
  }
  else if (key == 'F')
  {
    KEY_F = false;
    KEY_F_UP = true;
  }
  else if (key == 'G')
  {
    KEY_G = false;
    KEY_G_UP = true;
  }
  else if (key == 'H')
  {
    KEY_H = false;
    KEY_H_UP = true;
  }
  else if (key == 'I')
  {
    KEY_I = false;
    KEY_I_UP = true;
  }
  else if (key == 'J')
  {
    KEY_J = false;
    KEY_J_UP = true;
  }
  else if (key == 'K')
  {
    KEY_K = false;
    KEY_K_UP = true;
  }
  else if (key == 'L')
  {
    KEY_L = false;
    KEY_L_UP = true;
  }
  else if (key == 'M')
  {
    KEY_M = false;
    KEY_M_UP = true;
  }
  else if (key == 'N')
  {
    KEY_N = false;
    KEY_N_UP = true;
  }
  else if (key == 'O')
  {
    KEY_O = false;
    KEY_O_UP = true;
  }
  else if (key == 'P')
  {
    KEY_P = false;
    KEY_P_UP = true;
  }
  else if (key == 'Q')
  {
    KEY_Q = false;
    KEY_Q_UP = true;
  }
  else if (key == 'R')
  {
    KEY_R = false;
    KEY_R_UP = true;
  }
  else if (key == 'S')
  {
    KEY_S = false;
    KEY_S_UP = true;
  }
  else if (key == 'T')
  {
    KEY_T = false;
    KEY_T_UP = true;
  }
  else if (key == 'U')
  {
    KEY_U = false;
    KEY_U_UP = true;
  }
  else if (key == 'V')
  {
    KEY_V = false;
    KEY_V_UP = true;
  }
  else if (key == 'W')
  {
    KEY_W = false;
    KEY_W_UP = true;
  }
  else if (key == 'X')
  {
    KEY_X = false;
    KEY_X_UP = true;
  }
  else if (key == 'Y')
  {
    KEY_Y = false;
    KEY_Y_UP = true;
  }
  else if (key == 'Z')
  {
    KEY_Z = false;
    KEY_Z_UP = true;
  }
  else if (key == ' ')
  {
    KEY_SPACE = false;
    KEY_SPACE_UP = true;
  }
  if (key == CODED){
    if (keyCode == TAB)
    {
      KEY_TAB = false;
      KEY_TAB_UP = true;
    }
    else if (keyCode == BACKSPACE)
    {
      KEY_BACKSPACE = false;
      KEY_BACKSPACE_UP = true;
    }
    else if (keyCode == ENTER)
    {
      KEY_ENTER = false;
      KEY_ENTER_UP = true;
    }
    else if (keyCode == SHIFT)
    {
      KEY_SHIFT = false;
      KEY_SHIFT_UP = true;
    }
    else if (keyCode == UP)
    {
      KEY_UP = false;
      KEY_UP_UP = true;
    }
    else if (keyCode == DOWN)
    {
      KEY_DOWN = false;
      KEY_DOWN_UP = true;
    }
    else if (keyCode == LEFT)
    {
      KEY_LEFT = false;
      KEY_LEFT_UP = true;
    }
    else if (keyCode == RIGHT)
    {
      KEY_RIGHT = false;
      KEY_RIGHT_UP = true;
    }
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
