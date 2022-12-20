PImage backgroundImage, quitButtonImage;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
PImage PS5, XSX;
void imagePopulation() {
  backgroundImage = loadImage ("../Images/backgroundImage.jpg");
  PS5 = loadImage("../Images/PS5.jpeg");
  XSX = loadImage("../Images/XSX.jpg");
}
void quitButtonImage() {
  noFill();
  rect(quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
  float quitButtonImageWidth=175, quitButtonImageHeight=288;
  float quitButtonImageWidthAdjusted=0, quitButtonImageHeightAdjusted=0;
  float quitButtonImageWidthCalculated=0, quitButtonImageHeightCalculated=0;
  float largerDimension=0, smallerDimension=0;
  float imageWidthRatio=0, imageHeightRatio=0;
  quitButtonImage = loadImage ("../Images/phone.jpg");
  if (quitButtonImageWidth >= quitButtonImageHeight) {
    largerDimension=quitButtonImageWidth;
    smallerDimension=quitButtonImageHeight;

    quitButtonImageWidthAdjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;
    quitButtonImageHeightCalculated = quitButtonImageWidthAdjusted * imageHeightRatio;
    fill (red);
    rect (quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    noFill();
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthAdjusted, quitButtonImageHeightCalculated);
  } else {
    largerDimension=quitButtonImageHeight;
    smallerDimension=quitButtonImageWidth;

    quitButtonImageHeightAdjusted = quitButtonImageRectHeight;
    imageHeightRatio = smallerDimension / largerDimension;
    quitButtonImageWidthCalculated = quitButtonImageHeightAdjusted * imageHeightRatio;
    fill (red);
    rect (quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    noFill();
    image(quitButtonImage, quitButtonImageRectX+quitButtonWidth/2-quitButtonImageWidthCalculated/2, quitButtonImageRectY, quitButtonImageWidthCalculated, quitButtonImageHeightAdjusted);
  }
  /*println ("quitButtonImageWidthAdjusted", quitButtonImageWidthAdjusted);
   println ("quitButtonImageHeightAdjusted", quitButtonImageHeightAdjusted);
   println ("quitButtonImageWidthCalculated", quitButtonImageWidthCalculated);
   println ("quitButtonImageHeightCalculated", quitButtonImageHeightCalculated);
   println ("smallerDimension", smallerDimension);
   println ("largerDimension", largerDimension);
   println ("imageWidthRatio", imageWidthRatio);
   println ("quitButtonImageHeightAdjusted * imageWidthRatio", quitButtonImageHeightAdjusted * imageWidthRatio);*/
  //image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthAdjusted, quitButtonImageHeightAdjusted);
}
