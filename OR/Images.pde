PImage backgroundImage, quitButtonImage;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
PImage PS5, XSX, AppleLogo, AndroidLogo, heavyMouse, lightMouse, AMDGPU, NvidiaGPU, twelveHourTime, twentyFourHourTime, CocaColaCan, PepsiCan, soccerBall, footballBall, sixteenByTen, eightByFive, AdidasLogo, NikeLogo;
void imagePopulation() {
  backgroundImage = loadImage ("../Images/backgroundImage.jpg");
  PS5 = loadImage("../Images/PS5.png");
  XSX = loadImage("../Images/XSX.png");
  AppleLogo = loadImage("../Images/AppleLogo.png");
  AndroidLogo = loadImage("../Images/AndroidLogo.png");
  heavyMouse = loadImage("../Images/heavyMouse.png");
  lightMouse = loadImage("../Images/lightMouse.png");
  AMDGPU = loadImage("../Images/AMDGPU.png");
  NvidiaGPU = loadImage("../Images/NvidiaGPU.png");
  twelveHourTime = loadImage("../Images/12HourTime.png");
  twentyFourHourTime = loadImage("../Images/24HourTime.png");
  CocaColaCan = loadImage("../Images/CocaColaCan.png");
  PepsiCan = loadImage("../Images/PepsiCan.png");
  soccerBall = loadImage("../Images/soccerBall.png");
  footballBall = loadImage("../Images/footballBall.png");
  sixteenByTen = loadImage("../Images/16-10.png");
  eightByFive = loadImage("../Images/8-5.png");
  AdidasLogo = loadImage("../Images/AdidasLogo.png");
  NikeLogo = loadImage("../Images/NikeLogo.png");
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
    quitButtonImageHeightCalculated = quitButtonImageWidthAdjusted * imageWidthRatio;
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
