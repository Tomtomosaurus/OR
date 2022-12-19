float startTextX, startTextY, startTextWidth, startTextHeight;
PFont font1, font2, font3;
void textSetup() {
  String[] fontList = PFont.list();
  printArray(fontList);
  //Minimum Expectation = one font
  //Do more than one font!!!!!!!!!!!!
  font1 = createFont("NotoSerifMyanmar-Black", 30);
  font2 = createFont("NotoSerifMyanmar-Black", 17.5);
  font3 = createFont("Wingdings", 10);
}
void spaceBarText() {
  stroke(0);
  strokeWeight(5);
  rect(startTextX, startTextY, startTextWidth, startTextHeight);
  textFont(font2);
  fill(0);
  String startText = " PRESS SPACE TO CONTINUE";
  text(startText, startTextX+appWidth/30, startTextY, startTextWidth, startTextHeight);
}
void quitButtonText() {
  color ink = (nightMode) ? yellow : purple ;
  textFont(font1);
  fill(ink);
  String quitText = "  QUIT";
  text(quitText, quitButtonX+quitButtonWidth/2-appHeight/17, quitButtonY+quitButtonHeight/2-appHeight/40, quitButtonWidth, quitButtonHeight);
  noFill();
}
