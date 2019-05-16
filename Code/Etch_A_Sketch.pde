int x, y;

void setup() {
  size(600, 400);
  frameRate(10);
  // Set start coords
  x = 0; //width/2;
  y = 100;
}

void draw() {
  fill(255);
  //drawName();
  //noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight (6);
  moveDown(14);
  moveUp(7);
  moveRight(6);
  moveUp(7);
  moveDown(14);
  moveRight (3);
  moveUp(14);
  moveRight(8);
  moveDown(14);
  moveUp(7);
  moveLeft(8);
  moveRight(8);
  moveDown(7);
  moveRight (3);
  moveUp(14);
  moveRight(8);
  moveDown(6);
  moveLeft(8);
  moveDia(8);
  moveRight(3);
  moveUp(14);
  moveRight(6);
  moveLeft(6);
  moveDown(7);
  moveRight(6);
  moveLeft(6);
  moveDown(7);
  moveRight(9);
  moveUp(14);
  moveDown(14);
  moveRight(9);
}

// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y);
  }
  x=x+(10*rep);
}

// Method to draw down line
void moveDown(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y+i);
  }
  y=y+(10*rep);
}

// Method to draw up line
void moveUp(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x, y-i);
  }
  y=y-(10*rep);
}

// Method to draw left line
void moveLeft(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x-i, y);
  }
  x=x-(10*rep);
}

// Method to draw diagnole line
void moveDia(int rep) {
  for (int i=0; i<rep*10; i++) {
    point(x+i, y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

void mouseClicked() {
  saveFrame("line-######.png");
}

void keyPressed () { 
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(1);
    } else if (keyCode == LEFT) { 
      moveLeft(1);
    } else if (keyCode == UP) { 
      moveUp(1);
    } else if (keyCode == DOWN) { 
      moveDown(1);
    }
  }
}
