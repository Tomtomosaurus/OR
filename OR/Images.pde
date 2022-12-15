PImage backgroundImage, quitButtonImage;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
void imagePopulation() {
  nightModeTint();
  backgroundImage = loadImage ("../Images/backgroundImage.jpg");
  quitButtonImage = backgroundImage;
}
void quitButtonImage() {
  rect(quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
  float quitButtonImageWidth=615, quitButtonImageHeight=517;
  float quitButtonImageWidthAdjusted=0, quitButtonImageHeightAdjusted=0;
  float quitButtonImageWidthCalculated=0, quitButtonImageHeightCalculated=0;
  float largerDimension=0, smallerDimension=0;
  float imageWidthRatio=0, imageHeightRatio=0;
  if (quitButtonImageWidth >= quitButtonImageHeight) {
    largerDimension=quitButtonImageWidth;
    smallerDimension=quitButtonImageHeight;
    quitButtonImageWidthAdjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension;
    quitButtonImageHeightCalculated = quitButtonImageWidthAdjusted * imageHeightRatio;
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthAdjusted, quitButtonImageHeightCalculated);
  } else {
    largerDimension=quitButtonImageHeight;
    smallerDimension=quitButtonImageWidth;
    quitButtonImageHeightAdjusted = quitButtonImageRectHeight;
    imageHeightRatio = smallerDimension / largerDimension;
    quitButtonImageWidthCalculated = quitButtonImageHeightAdjusted * imageWidthRatio;
    image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthCalculated, quitButtonImageHeightAdjusted);
  }
  //image(quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthAdjusted, quitButtonImageHeightAdjusted);
}
