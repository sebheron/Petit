// Method will draw text outlined, it works by drawing text 8 times in the outline color at different positions and then drawing the fill text on top.
// This is likely an inefficient method.
void textOutlined(String text, float x, float y, color fillColor, color outLineColor) {
  fill(outLineColor);
  text(text, x-3, y-3);
  text(text, x+3, y+3);
  text(text, x-3, y+3);
  text(text, x+3, y-3);
  text(text, x+3, y);
  text(text, x, y-3);
  text(text, x-3, y);
  text(text, x, y+3);
  fill(fillColor);
  text(text, x, y);
}

//This is the score text which will be shown when the player gains points. This is to show the player how many points they have and also provide a more dynamic look to the game.
class ScoreText extends Object {
  float yDrift;
  int score;

  ScoreText(float _x, float _y, int _score) {
    super(_x + 16, _y, 0, 0);
    yDrift = 0;
    score = _score;
  }

  void display() {
    // If the score has drifted more than 20 places above its original position then it will not be drawn.
    if (yDrift < 20) {
      textSize(20);
      textAlign(CENTER);
      textOutlined(String.valueOf(score), x - camera.x, y - camera.y - yDrift, 255, 0);
      yDrift += 1;
    }
  }
}
