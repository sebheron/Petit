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
