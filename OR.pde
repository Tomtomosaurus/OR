int appWidth, appHeight, smallerDimension, largerDimension;
void setup() {
  size(displayWidth, displayHeight);
  fullScreen();
  appWidth = width;
  appHeight = height;
  if (appWidth >= appHeight) {
    largerDimension = appWidth;
    smallerDimension = appHeight;
  } else {
    largerDimension = appHeight;
    smallerDimension = appWidth;
  }
  display();
  println("smallerDimension:", smallerDimension); 
  println("largerDimension:", largerDimension);
}
void draw() {
}
void mousePressed() {
}
void keyPressed() {
}
