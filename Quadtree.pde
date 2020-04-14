class Quadtree {
 
  int MAX_OBJECTS = 10;
  int MAX_LEVELS = 5;
 
  int level;
  List<Object> objects;
  Rect bounds;
  Quadtree[] nodes;
 
 /*
  * Constructor
  */
  public Quadtree(int pLevel, Rect pBounds) {
   level = pLevel;
   objects = new ArrayList();
   bounds = pBounds;
   nodes = new Quadtree[4];
  }
}
