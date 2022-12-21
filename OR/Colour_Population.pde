color blue, red, purple, yellow, green, PS5ButtonColour, XSXButtonColour, choosingButtonColourInverted, quitTextColour;

void colourSetupPopulation() {
  blue = color (0, 0, 255);
  red = color (255, 0, 0);
  purple = color (150, 0, 255);
  yellow = color (255, 255, 0);
  green = color(0, 255, 0);
  dayModeTint = color(255, 255, 255);
  dayModeOpacity = 255;
  nightModeTint = color(64, 64, 0);
  nightModeOpacity = 255;
}

void colourDrawPopulation() {
  if (nightMode) {
    if (mouseX>=PS5ButtonX && mouseY>=PS5ButtonY && mouseX<=PS5ButtonX+PS5ButtonWidth && mouseY<=PS5ButtonY+PS5ButtonHeight) {
      PS5ButtonColour = 0;
    } else {
      PS5ButtonColour = 255;
    }
    choosingButtonColourInverted = 0;
    quitTextColour = 0;
  } else {
    if (mouseX>=PS5ButtonX && mouseY>=PS5ButtonY && mouseX<=PS5ButtonX+PS5ButtonWidth && mouseY<=PS5ButtonY+PS5ButtonHeight) {
      PS5ButtonColour = 255;
    } else {
      PS5ButtonColour = 0;
    }
    choosingButtonColourInverted = 255;
    quitTextColour = 0;
  }
  if (mouseX>=XSXButtonX && mouseY>=XSXButtonY && mouseX<=XSXButtonX+XSXButtonWidth && mouseY<=XSXButtonY+XSXButtonHeight) {
    XSXButtonColour = 0;
  } else {
    XSXButtonColour = 255;
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
