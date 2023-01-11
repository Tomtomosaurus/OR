color blue, red, purple, yellow, green, quitTextColour;

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
    if (mouseX>=XSXButtonX && mouseY>=XSXButtonY && mouseX<=XSXButtonX+XSXButtonWidth && mouseY<=XSXButtonY+XSXButtonHeight) {
      XSXButtonColour = 0;
    } else {
      XSXButtonColour = 255;
    }
    if (mouseX>=AppleButtonX && mouseY>=AppleButtonY && mouseX<=AppleButtonX+AppleButtonWidth && mouseY<=AppleButtonY+AppleButtonHeight) {
      AppleButtonColour = 0;
    } else {
      AppleButtonColour = 255;
    }
    if (mouseX>=AndroidButtonX && mouseY>=AndroidButtonY && mouseX<=AndroidButtonX+AndroidButtonWidth && mouseY<=AndroidButtonY+AndroidButtonHeight) {
      AndroidButtonColour = 255;
    } else {
      AndroidButtonColour = 0;
    }
    if (mouseX>=lightMouseButtonX && mouseY>=lightMouseButtonY && mouseX<=lightMouseButtonX+lightMouseButtonWidth && mouseY<=lightMouseButtonY+lightMouseButtonHeight) {
      lightMouseButtonColour = 255;
    } else {
      lightMouseButtonColour = 0;
    }
    if (mouseX>=heavyMouseButtonX && mouseY>=heavyMouseButtonY && mouseX<=heavyMouseButtonX+heavyMouseButtonWidth && mouseY<=heavyMouseButtonY+heavyMouseButtonHeight) {
      heavyMouseButtonColour = 255;
    } else {
      heavyMouseButtonColour = 0;
    }
    if (mouseX>=NvidiaButtonX && mouseY>=NvidiaButtonY && mouseX<=NvidiaButtonX+NvidiaButtonWidth && mouseY<=NvidiaButtonY+NvidiaButtonHeight) {
      NvidiaButtonColour = 255;
    } else {
      NvidiaButtonColour = 0;
    }
    if (mouseX>=AMDButtonX && mouseY>=AMDButtonY && mouseX<=AMDButtonX+AMDButtonWidth && mouseY<=AMDButtonY+AMDButtonHeight) {
      AMDButtonColour = 255;
    } else {
      AMDButtonColour = 0;
    }
    if (mouseX>=twelveHourTimeButtonX && mouseY>=twelveHourTimeButtonY && mouseX<=twelveHourTimeButtonX+twelveHourTimeButtonWidth && mouseY<=twelveHourTimeButtonY+twelveHourTimeButtonHeight) {
      twelveHourTimeButtonColour = 255;
    } else {
      twelveHourTimeButtonColour = 0;
    }
    if (mouseX>=twentyFourHourTimeButtonX && mouseY>=twentyFourHourTimeButtonY && mouseX<=twentyFourHourTimeButtonX+twentyFourHourTimeButtonWidth && mouseY<=twentyFourHourTimeButtonY+twentyFourHourTimeButtonHeight) {
      twentyFourHourTimeButtonColour = 255;
    } else {
      twentyFourHourTimeButtonColour = 0;
    }
    if (mouseX>=CocaColaButtonX && mouseY>=CocaColaButtonY && mouseX<=CocaColaButtonX+CocaColaButtonWidth && mouseY<=CocaColaButtonY+CocaColaButtonHeight) {
      CocaColaButtonColour = 255;
    } else {
      CocaColaButtonColour = 0;
    }
    if (mouseX>=PepsiButtonX && mouseY>=PepsiButtonY && mouseX<=PepsiButtonX+PepsiButtonWidth && mouseY<=PepsiButtonY+PepsiButtonHeight) {
      PepsiButtonColour = 255;
    } else {
      PepsiButtonColour = 0;
    }
    if (mouseX>=soccerButtonX && mouseY>=soccerButtonY && mouseX<=soccerButtonX+soccerButtonWidth && mouseY<=soccerButtonY+soccerButtonHeight) {
      soccerButtonColour = 255;
    } else {
      soccerButtonColour = 0;
    }
    if (mouseX>=footballButtonX && mouseY>=footballButtonY && mouseX<=footballButtonX+footballButtonWidth && mouseY<=footballButtonY+footballButtonHeight) {
      footballButtonColour = 255;
    } else {
      footballButtonColour = 0;
    }
    if (mouseX>=sixteenByTenButtonX && mouseY>=sixteenByTenButtonY && mouseX<=sixteenByTenButtonX+sixteenByTenButtonWidth && mouseY<=sixteenByTenButtonY+sixteenByTenButtonHeight) {
      sixteenByTenButtonColour = 255;
    } else {
      sixteenByTenButtonColour = 0;
    }
    if (mouseX>=eightByFiveButtonX && mouseY>=eightByFiveButtonY && mouseX<=eightByFiveButtonX+eightByFiveButtonWidth && mouseY<=eightByFiveButtonY+eightByFiveButtonHeight) {
      eightByFiveButtonColour = 255;
    } else {
      eightByFiveButtonColour = 0;
    }
    if (mouseX>=NikeButtonX && mouseY>=NikeButtonY && mouseX<=NikeButtonX+NikeButtonWidth && mouseY<=NikeButtonY+NikeButtonHeight) {
      NikeButtonColour = 255;
    } else {
      NikeButtonColour = 0;
    }
    if (mouseX>=AdidasButtonX && mouseY>=AdidasButtonY && mouseX<=AdidasButtonX+AdidasButtonWidth && mouseY<=AdidasButtonY+AdidasButtonHeight) {
      AdidasButtonColour = 255;
    } else {
      AdidasButtonColour = 0;
    }
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
