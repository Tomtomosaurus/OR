float PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight;
float XSXButtonX, XSXButtonY, XSXButtonWidth, XSXButtonHeight;
Boolean PS5Correct=false, XSXIncorrect=false;
void choosingTime() {
  if (PS5Correct==false && XSXIncorrect==false) {
    image(PS5, 0, 0, appWidth/6, appHeight/3-5);
    image(XSX, appWidth/6, 0, appWidth/6-5, appHeight/3-5);
    fill(PS5ButtonColour);
    rect(PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight);
    fill(XSXButtonColour);
    rect(XSXButtonX, XSXButtonY, XSXButtonWidth, XSXButtonHeight);
  }
  if (PS5Correct) {
    tint(255, 255, 255, 50);
    rect(0, 0, appWidth/3, appHeight/3);
  }
}
