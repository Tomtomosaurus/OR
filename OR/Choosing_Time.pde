float PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight;
float XSXButtonX, XSXButtonY, XSXButtonWidth, XSXButtonHeight;
Boolean PS5Correct=false, XSXIncorrect=false;
Boolean AppleCorrect=false, AndroidIncorrect=false;
Boolean lightMouseIncorrect=false, heavyMouseCorrect=false;
Boolean AMDCorrect=false, NvidiaIncorrect=false;
Boolean twelveHourTimeIncorrect=false, twentyFourHourTimeCorrect=false;
Boolean CocaColaCorrect=false, PepsiColaIncorrect=false;
Boolean soccerIncorrect=false, footballCorrect=false;
Boolean sixteenByTenIncorrect=false, eightByFiveCorrect=false;
Boolean NikeIncorrect=false, AdidasCorrect=false;
void choosingTime() {
  if (PS5Correct==false && XSXIncorrect==false) {
    image(PS5, 0, 0, appWidth/6, appHeight/3-5);
    image(XSX, appWidth/6, 0, appWidth/6-5, appHeight/3-5);
    fill(PS5ButtonColour);
    rect(PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight);
    fill(XSXButtonColour);
    rect(XSXButtonX, XSXButtonY, XSXButtonWidth, XSXButtonHeight);
  }
  if (XSXIncorrect) {
    tint(255, 255, 255, 50);
    fill(red);
    rect(0, 0, appWidth/3-5, appHeight/3-5);
    noTint();
  }
  if (PS5Correct) {
    tint(255, 255, 255, 50);
    fill(green);
    rect(0, 0, appWidth/3-5, appHeight/3-5);
    noTint();
  }
}
