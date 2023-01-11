float startTextX, startTextY, startTextWidth, startTextHeight;
PFont font1, font2, font3;
void textSetup() {
  //String[] fontList = PFont.list();
  //printArray(fontList);
  //Minimum Expectation = one font
  //Do more than one font!!!!!!!!!!!!
  font1 = createFont("Arial", 30);
  font2 = createFont("Lucida Console", 17.5);
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
  color ink = (nightMode) ? yellow : color(0);
  textFont(font1);
  fill(ink);
  String quitText = "X";
  text(quitText, quitButtonX+appWidth/50, quitButtonY+appHeight/100, quitButtonWidth-appWidth/50, quitButtonHeight-appHeight/100);
  noFill();
}
