class Quadtree {

  int MAX_OBJECTS = 10;
  int MAX_LEVELS = 5;

  int level;
  List<Entity> entities;
  Rect bounds;
  Quadtree[] nodes;

  public Quadtree(int pLevel, Rect pBounds) {
    level = pLevel;
    entities = new ArrayList();
    bounds = pBounds;
    nodes = new Quadtree[4];
  }

  public void clear() {
    entities.clear();

    for (int i = 0; i < nodes.length; i++) {
      if (nodes[i] != null) {
        nodes[i].clear();
        nodes[i] = null;
      }
    }
  }

  private void split() {
    int subWidth = (int)(bounds.halfWidth);
    int subHeight = (int)(bounds.halfHeight);
    int x = (int)bounds.x;
    int y = (int)bounds.y;

    nodes[0] = new Quadtree(level+1, new Rect(x + subWidth, y, subWidth, subHeight));
    nodes[1] = new Quadtree(level+1, new Rect(x, y, subWidth, subHeight));
    nodes[2] = new Quadtree(level+1, new Rect(x, y + subHeight, subWidth, subHeight));
    nodes[3] = new Quadtree(level+1, new Rect(x + subWidth, y + subHeight, subWidth, subHeight));
  }

  private int getIndex(Entity e) {
    int index = -1;
    double verticalMidpoint = bounds.x + bounds.halfWidth;
    double horizontalMidpoint = bounds.y + bounds.halfHeight;

    // Object can completely fit within the top quadrants
    boolean topQuadrant = (e.y < horizontalMidpoint && e.y + e.h < horizontalMidpoint);
    // Object can completely fit within the bottom quadrants
    boolean bottomQuadrant = (e.y > horizontalMidpoint);

    // Object can completely fit within the left quadrants
    if (e.x < verticalMidpoint && e.x + e.w < verticalMidpoint) {
      if (topQuadrant) {
        index = 1;
      } else if (bottomQuadrant) {
        index = 2;
      }
    }
    // Object can completely fit within the right quadrants
    else if (e.x > verticalMidpoint) {
      if (topQuadrant) {
        index = 0;
      } else if (bottomQuadrant) {
        index = 3;
      }
    }

    return index;
  }

  public void insert(Entity e) {
    if (nodes[0] != null) {
      int index = getIndex(e);

      if (index != -1) {
        nodes[index].insert(e);
        return;
      }
    }

    entities.add(e);

    if (entities.size() > MAX_OBJECTS && level < MAX_LEVELS) {
      if (nodes[0] == null) { 
        split();
      }

      int i = 0;
      while (i < entities.size()) {
        int index = getIndex(entities.get(i));
        if (index != -1) {
          if (index != -1) {
            nodes[index].insert(entities.get(i));
            entities.remove(i);
          } else {
            i++;
          }
        } else {
          i++;
        }
      }
    }
  }

  public List retrieve(List returnObjects, Entity e) {
    int index = getIndex(e);
    if (index != -1 && nodes[0] != null) {
      nodes[index].retrieve(returnObjects, e);
    }

    returnObjects.addAll(entities);

    return returnObjects;
  }
}
