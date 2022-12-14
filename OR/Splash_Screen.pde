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
  fill(red);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  quitButtonText();
}
