int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
color dayModeTint, nightModeTint;
int dayModeOpacity, nightModeOpacity;
Boolean nightMode=false;

void homeScreen() {
  println("Arrived at Home Screen");
  /* Home Screen Expectations
   - Background image using tint()
   - 9 evenly spaced rectangles
   - Quit button and reset button (splash screen start button)
   - In each: image, text, 2D shape, button
   - Narrative through the 9 rectangles
   - See case study
   - Note: must have one image with aspect ratio
   */
}
void backgroundImage() {
  nightModeTint();
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  if (nightMode) {
    tint(nightModeTint, nightModeOpacity); //Night Mode, see ternary operator
  }
}
void ORGrid() {
  strokeWeight(appHeight/100);
  stroke(blue);
  line(appWidth/3, 0, appWidth/3, appHeight);
  line(appWidth*2/3, 0, appWidth*2/3, appHeight);
  stroke(red);
  line(0, appHeight/3, appWidth, appHeight/3);
  line(0, appHeight*2/3, appWidth, appHeight*2/3);
  noStroke();
}
void quitButton() {
  fill(red);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  quitButtonText();
  if (mouseX >= quitButtonX && mouseX >= quitButtonY && mouseX <= quitButtonX+quitButtonWidth && mouseY <= quitButtonY+quitButtonWidth) quitButtonImage();
}
