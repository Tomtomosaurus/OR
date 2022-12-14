float startTextX, startTextY, startTextWidth, startTextHeight;
PFont font1, font2, font3;
void textSetup() {
  //String[] fontList = PFont.list();
  //printArray(fontList);
  //Minimum Expectation = one font
  //Do more than one font!!!!!!!!!!!!
  font1 = createFont("Charter-BlackItalic", 37.5);
  font2 = createFont("Noteworthy-Bold", 10);
  font3 = createFont("Wingdings", 10);
}
void spaceBarText() {
  strokeWeight(5);
  stroke(0);
  rect(startTextX, startTextY, startTextWidth, startTextHeight);
  textFont(font1);
  fill(0);
  String startText = " PRESS SPACE TO CONTINUE";
  text(startText, startTextX, startTextY, startTextWidth, startTextHeight);
}
void quitButtonText() {
  fill(quitTextColour);
  String quitText = "QUIT";
  text(quitText, quitButtonX+quitButtonWidth/2-appHeight/20, quitButtonY+quitButtonHeight/2-appHeight/37.5, quitButtonWidth, quitButtonHeight);
}
