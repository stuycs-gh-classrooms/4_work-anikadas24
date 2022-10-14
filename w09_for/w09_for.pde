/*
  This program will simulate the movement seen in the
  arcade classic "Space Invaders". Our invaders will be
  circles, and there will be 2 kinds of them.
  0. The "spaceship" is a smaller circle that moves
    horizontally across the screen from left to right.
    This movement should be smooth, and the full spaceship
    should always be visible.
  1. The "invaders" are larger circles arranged in a
    rectangular grid. The invaders move as a single group.
    The grid always moves in steps the same size as a single
    circle.
    The grid starts off moving left to right, when the
    grid would move off the edge of the screen, it should
    move down. After moving down, the grid should then move
    right to left, moving and down and reversing direction
    once reaching the other edge.
    When the grid would go past the bottom of the screen,
    it should reset back to the top, moving left to right
    again.
  This assignment is broken up into 3 parts. The code you
  need to complete each part is clearly labeled. Do not
  move to a new part until you have completed the previous
  ones.
  PART 0: Draw the spacehip that moves across the screen.
  PART 1: Draw a the invader gird. This part involves NO
          MOVEMENT of the grid.
  PART 2: Handle the movement of the invader grid.
*/


//Global variables for the "spaceship" that goes across the top of the screen.
int topX, topY, topRadius;

//Global variables for the grid of "invaders"
int gridX, gridY, radius, numCircleCols, numCircleRows;
//Global variable for how far and in which direction
//the invader grid moves.
int invaderSpeed;


void setup() {
  //Do not modify theses lines
  size(400, 500);
  frameRate(60);
  topRadius = 15;
  radius = 25;
  numCircleCols = 4;
  numCircleRows = 2;

  /* PART 0
    Set topX and topY so that the "spaceship"
    circle starts fully visible at the top right
    corner of the screen.
  */
  topX = 0;
  topY = 0;

  /* PART 1
    Set gridX and gridY so that the "invader" grid
    starts fully visible on the right side just below
    the spaceship circle.
  */
  gridX = 0;
  gridY = 0;

  /* PART 2
    Set invaderSpeed so that the invader grid
    stars by moving to the right by the width
    of a full circle.
  */
  invaderSpeed = 0;
}//setup


void draw() {
  background(255);

  /* PART 0
    FIRST: complete the drawSpaceShip method below.
  */
  drawSpaceShip(topX, topY, topRadius*2);
  circleGrid(gridX, gridY, numCircleRows, numCircleCols, radius*2);
}
  /* PART 0
    The spaceship should move forward 1 pixel each
    frame.
    When the entire spacechip has moved past the
    right edge of the screen, move it back to the
    left side.
  */
void drawSpaceShip(int shipX, int shipY, int d) {
 circle (shipX, shipY, d);
 shipX += 10;
 shipY += 10;
 d = 10;
}

  /* PART 1
    FIRST: complete the circleGrid method below.
  */
  

  /* Part 2 FIRST
    The invader grid should only move twice a second using
    the invaderSpeed global variable.
  */
  //CODE GOES HERE



  /* Part 2 SECOND
    When the invader grid would go past the right edge,
    it should move down by a full circle size and
    reverse direction.
    Make sure no part of the grid gets cut off by the
    screen.
  */
  //CODE GOES HERE


  /* Part 2 THIRD
    When the invader grid would go past the left edge,
    it should move down by a full circle size and
    reverse direction.
    Make sure no part of the grid gets cut off by the
    screen.
  */
  //CODE GOES HERE


  /* Part 2 THIRD
    When the invader grid would go past the bottom edge,
    it should reset back to the top, moving left to right
    again.
  */
  //CODE GOES HERE

}//draw

/* PART 0
  Draw a circle of diameter d with center (shipX, shipY).
  If the circle is cut off by the edge of the screen,
  draw a circle on the other side
*/
void drawSpaceShip(int shipX, int shipY, int d) {

}//drawSpaceShip

/* PART 1
  Draw a grid of circles with a diameter of d.
  The grid should have numRows rows, and each row
  should have numCols circles.
  The center of the top-right circles should be at
  (startX, startY)
*/
void circleGrid(int startX, int startY, int numRows, int numCols, int d) {

}//circleGrid

/*
  DO NOT MODIFY
  Draw a row of n circles with diameter of d where the center
  of the first circle is at (startX, startY)
*/
void circleRow(int startX, int startY, int n, int d) {
  for (int count=0; count < n; count++) {
    circle(startX, startY, d);
    startX+= d;
  }//for
}//circleRow
