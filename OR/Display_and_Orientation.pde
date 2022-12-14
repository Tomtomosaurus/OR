String displayOrientation, brokenOrNot, turnPhunOrNot;
int smallerDimension, largerDimension;

void display() {
  if (appWidth >= appHeight) {
    displayOrientation = "Landscape/Square";
    largerDimension = appWidth;
    smallerDimension = appHeight;
  } else {
    displayOrientation = "Portrait";
    largerDimension = appHeight;
    smallerDimension = appWidth;
  }
  if (appWidth > displayWidth || appHeight > displayHeight) {
    brokenOrNot = "STOP, IS BROKEY";
  } else {
    brokenOrNot = "Dimensions Gud";
  }
  if (displayWidth >= displayHeight) {
    turnPhunOrNot = "Phun Gud";
  } else {
    turnPhunOrNot = "Bruh, Turn Your Phun!";
  }
  //Output #1: Console confirms CANVAS will fit in the monitor
  println("Width:", width);
  println("Height:", height);
  println("Display Width:", displayWidth);
  println("Display Height:", displayHeight);
  //Output #2: Console confirms display orientation (landscape-square or portrait)
  println("Display Orientation:", displayOrientation);
  //Output #3: Console confirms dimension sizes (smaller and larger)
  println("Smaller Dimension:", smallerDimension);
  println("Larger Dimension:", largerDimension);
  //Output #4 if error with any of the above, program will exit or be broken
  println(brokenOrNot);
  println(turnPhunOrNot);
}
