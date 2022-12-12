float textX, textY, textWidth, textHeight;
PFont font1, font2, font3;
void textSetup() {
  String[] fontList = PFont.list();
  printArray(fontList);
  //Minimum Expectation = one font
  //Do more than one font!!!!!!!!!!!!
  font1 = createFont("Charter-BlackItalic", 50);
  font2 = createFont("Noteworthy-Bold", 10);
  font3 = createFont("Wingdings", 10);
}
void spaceBarText() {
  noFill();
  strokeWeight(5);
  stroke(0);
  rect(textX, textY, textWidth, textHeight);
  textFont(font3);
  String spaceBar = "PRESS THE SPACEBAR TO CONTINUE";
  text(spaceBar, textX, textY, textWidth, textHeight);
}
