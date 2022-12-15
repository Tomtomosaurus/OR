int appWidth, appHeight;
Boolean OS=false, startProgram=false;
void setup() {
  size(displayWidth, displayHeight);
  fullScreen();
  appWidth = width;
  appHeight = height;
  display();
  population();
  imagePopulation();
  textSetup();
  colourSetupPopulation();
}
void draw() {
  colourDrawPopulation();
  if (OS) {
    backgroundImage();
    splashScreen();
  } else {
    backgroundWhiteScreen();
  }
  if (startProgram) {
    homeScreen();
    backgroundImage();
    ORGrid();
    choosingTime();
    quitButton();
  }
}
void mousePressed() {
  if (OS==false && startProgram==false) OS=true;
  if (startProgram && mouseX>=quitButtonX && mouseY >=quitButtonY && mouseX <= quitButtonX+quitButtonWidth && mouseY <=quitButtonY+quitButtonHeight) exit();
}
void keyPressed() {
  if (OS && key==' ') {
    startProgram=true;
    OS=false;
  }
  if (OS || startProgram && key=='n' || key=='N') {
    if (nightMode==true) {
      nightMode=false;
    } else {
      nightMode=true;
    }
  }
}
