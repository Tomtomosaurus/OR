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
void backgroundWhiteScreen() {
  fill(255);
  noStroke();
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  stroke(1);
}
void backgroundImage() {
  if (nightMode==false) {
    tint(dayModeTint, dayModeOpacity); //Day Mode, see ternary operator
  } else {
    tint(nightModeTint, nightModeOpacity); //Night Mode, see ternary operator
  }
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
}
