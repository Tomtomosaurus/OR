color blue, red, purple, yellow, choosingButtonColour, choosingButtonColourInverted, quitTextColour;

void colourSetupPopulation() {
  blue = color (0, 0, 255);
  red = color (255, 0, 0);
  purple = color (150, 0, 255);
  yellow = color (255, 255, 0);
  dayModeTint = color(255, 255, 255);
  dayModeOpacity = 50;
  nightModeTint = color(64, 64, 0);
  nightModeOpacity = 255;
}

void colourDrawPopulation() {
  if (nightMode) {
    choosingButtonColour = 255;
    choosingButtonColourInverted = 0;
    quitTextColour = 0;
  } else {
    choosingButtonColour = 0;
    choosingButtonColourInverted = 255;
    quitTextColour = 0;
  }
}
void nightModeTint() {
  if (nightMode==false) {
    tint(dayModeTint, dayModeOpacity); //Day Mode, see ternary operator
  } else {
    tint(nightModeTint, nightModeOpacity);
  }
}
void backgroundWhiteScreen() {
  fill(255);
  noStroke();
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  stroke(1);
}
