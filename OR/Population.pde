float centerX=appWidth/2, centerY=appHeight/2;
void population() {
  splashScreenX = appWidth/6;
  splashScreenY = appHeight/6;
  splashScreenWidth = appWidth*2/3;
  splashScreenHeight = appHeight*2/3;
  startButtonWidth = appWidth/3;
  startButtonHeight = appHeight/21;
  startButtonX = appWidth/2-startButtonWidth/2;
  startButtonY = appHeight/2-startButtonHeight/2;
  startTextX = startButtonX;
  startTextY = startButtonY;
  startTextWidth = startButtonWidth;
  startTextHeight = startButtonHeight;
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  PS5ButtonWidth = appWidth/12;
  PS5ButtonHeight = appHeight/12;
  PS5ButtonX = 0;
  PS5ButtonY = appHeight/6-PS5ButtonHeight/2;
  quitButtonWidth = appWidth/6;
  quitButtonHeight = appHeight/10;
  quitButtonX = appWidth/2-quitButtonWidth/2;
  quitButtonY = appHeight/3-quitButtonHeight;
  quitButtonImageRectWidth = quitButtonWidth;
  quitButtonImageRectHeight = quitButtonHeight;
  quitButtonImageRectX = quitButtonX;
  quitButtonImageRectY = quitButtonY;
  XSXButtonWidth = PS5ButtonWidth;
  XSXButtonHeight = PS5ButtonHeight;
  XSXButtonX = appWidth/3-XSXButtonWidth;
  XSXButtonY = PS5ButtonY;
  songBarX = 0;
  songBarY = appWidth*9/10;
  songBarHeight = 10;
}
void drawPopulation() {
  songBarWidth = song1.position()/appWidth;
}
