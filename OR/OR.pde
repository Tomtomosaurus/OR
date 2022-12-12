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
    strokeWeight(appHeight/100);
    stroke(blue);
    line(appWidth/3, 0, appWidth/3, appHeight);
    line(appWidth*2/3, 0, appWidth*2/3, appHeight);
    stroke(red);
    line(0, appHeight/3, appWidth, appHeight/3);
    line(0, appHeight*2/3, appWidth, appHeight*2/3);
    noStroke();
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
