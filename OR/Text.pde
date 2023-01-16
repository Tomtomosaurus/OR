float startTextX, startTextY, startTextWidth, startTextHeight;
PFont font1, font2, font3, font4, font5;
void textSetup() {
  String[] fontList = PFont.list();
  printArray(fontList);
  //Minimum Expectation = one font
  //Do more than one font!!!!!!!!!!!!
  font1 = createFont("Arial", 30);
  font2 = createFont("Lucida Console", appHeight/30);
  font3 = createFont("Wingdings", 10);
  font4 = createFont("ITFDevanagariMarathi-Bold", appHeight/40);
  font5 = createFont("ITFDevanagariMarathi-Bold", appHeight/60);
}
void spaceBarText() {
  stroke(0);
  strokeWeight(5);
  rect(startTextX, startTextY, startTextWidth, startTextHeight);
  textFont(font2);
  fill(0);
  String startText = " PRESS SPACE TO CONTINUE";
  text(startText, startTextX+startTextWidth/14, startTextY+startTextHeight/20, startTextWidth, startTextHeight);
}
void quitButtonText() {
  color ink = (nightMode) ? yellow : color(0);
  textFont(font1);
  fill(ink);
  String quitText = "X";
  text(quitText, quitButtonX+appWidth/50, quitButtonY+appHeight/100, quitButtonWidth-appWidth/50, quitButtonHeight-appHeight/100);
  noFill();
}
