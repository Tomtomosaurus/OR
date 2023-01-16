float splashScreenX, splashScreenY, splashScreenWidth, splashScreenHeight;
float startButtonX, startButtonY, startButtonWidth, startButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;

void splashScreen() {
  noTint();
  ORGrid();
  fill(blue);
  rect(splashScreenX, splashScreenY, splashScreenWidth, splashScreenHeight);
  fill(purple);
  rect(startButtonX, startButtonY, startButtonWidth, startButtonHeight);
  spaceBarText();
  textFont(font4);
  text ("CONTROLS", appWidth/2-appWidth/20, appHeight*3/5, appWidth/10, appHeight/10);
  textFont(font5);
  text ("N = CAROL OF THE BELLS", appWidth*2/5, appHeight*52/80, appWidth, appHeight);
  text ("UP = CAROL OF THE BELLS", appWidth*2/5, appHeight*53/80, appWidth, appHeight);
  text ("DOWN = HOME DEPOT", appWidth*2/5, appHeight*54/80, appWidth, appHeight);
  text ("LEFT = BACK 5 SECONDS", appWidth*2/5, appHeight*55/80, appWidth, appHeight);
  text ("RIGHT = FOREWARD 5 SECONDS", appWidth*2/5, appHeight*56/80, appWidth, appHeight);
  text ("M = MUTE", appWidth*2/5, appHeight*57/80, appWidth, appHeight);
}
