int appWidth, appHeight;
color blue, red, purple, yellow;
Boolean OS=false, startProgram=false;
void setup() {
  size(displayWidth, displayHeight);
  fullScreen();
  appWidth = width;
  appHeight = height;
  display();
  population();
  textSetup();
}
void draw() {
  if (OS) {
    splashScreen();
  } else {
    backgroundWhiteScreen();
  }
  if (startProgram) {
    homeScreen();
    backgroundImage();
    ORGrid();
    choosingTime();
  }
}
void mousePressed() {
  if (OS==false && startProgram==false) OS=true;
}
void keyPressed() {
  if (OS && key==' ') {
    startProgram=true;
    OS=false;
  }
