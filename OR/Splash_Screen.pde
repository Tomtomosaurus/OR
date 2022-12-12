float splashScreenX, splashScreenY, splashScreenWidth, splashScreenHeight;
float startButtonX, startButtonY, startButtonWidth, startButtonHeight;

void splashScreen() {
  background(255);
  fill(0);
  rect(splashScreenX, splashScreenY, splashScreenWidth, splashScreenHeight);
  spaceBarText();
  fill(255);
  rect(startButtonX, startButtonY, startButtonWidth, startButtonHeight);
}
