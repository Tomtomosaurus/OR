float centerX=appWidth/2, centerY=appHeight/2;
void population() {
  splashScreenX = appWidth/6;
  splashScreenY = appHeight/6;
  splashScreenWidth = appWidth*2/3;
  splashScreenHeight = appHeight*2/3;
  startButtonWidth = appWidth/3;
  startButtonHeight = appHeight/21;
  startButtonX = appWidth/2-startButtonWidth/2;
  startButtonY = appHeight/2-startButtonHeight/2;
  startTextX = startButtonX;
  startTextY = startButtonY;
  startTextWidth = startButtonWidth;
  startTextHeight = startButtonHeight;
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  PS5ButtonWidth = appWidth/12;
  PS5ButtonHeight = appHeight/12;
  PS5ButtonX = 0;
  PS5ButtonY = appHeight/6-PS5ButtonHeight/2;
  quitButtonWidth = appWidth/20;
  quitButtonHeight = appHeight/20;
  quitButtonX = appWidth-quitButtonWidth;
  quitButtonY = appHeight-quitButtonHeight;
  quitButtonImageRectWidth = quitButtonWidth;
  quitButtonImageRectHeight = quitButtonHeight;
  quitButtonImageRectX = quitButtonX;
  quitButtonImageRectY = quitButtonY;
  XSXButtonWidth = PS5ButtonWidth;
  XSXButtonHeight = PS5ButtonHeight;
  XSXButtonX = appWidth/3-XSXButtonWidth-5;
  XSXButtonY = PS5ButtonY;
  songBarX = 0;
  songBarY = appHeight*24/25;
  songBarHeight = appHeight/25;
  AppleButtonWidth = PS5ButtonWidth;
  AppleButtonHeight = PS5ButtonHeight;
  AppleButtonX = appWidth/3+5;
  AppleButtonY = appHeight/6-AppleButtonHeight/2;
  AndroidButtonWidth = PS5ButtonWidth;
  AndroidButtonHeight = PS5ButtonHeight;
  AndroidButtonX = appWidth*2/3-AndroidButtonWidth-5;
  AndroidButtonY = appHeight/6-AndroidButtonHeight/2;
  lightMouseButtonWidth = PS5ButtonWidth;
  lightMouseButtonHeight = PS5ButtonHeight;
  lightMouseButtonX = PS5ButtonX+appWidth*2/3+5;
  lightMouseButtonY = PS5ButtonY;
  heavyMouseButtonWidth = PS5ButtonWidth;
  heavyMouseButtonHeight = PS5ButtonHeight;
  heavyMouseButtonX = XSXButtonX+appWidth*2/3+5;
  heavyMouseButtonY = PS5ButtonY;
  AMDButtonWidth = PS5ButtonWidth;
  AMDButtonHeight = PS5ButtonHeight;
  AMDButtonX = PS5ButtonX;
  AMDButtonY = PS5ButtonY+appHeight/3; 
  NvidiaButtonWidth = PS5ButtonWidth;
  NvidiaButtonHeight = PS5ButtonHeight;
  NvidiaButtonX = XSXButtonX;
  NvidiaButtonY = AMDButtonY;
  twelveHourTimeButtonWidth = PS5ButtonWidth;
  twelveHourTimeButtonHeight = PS5ButtonHeight;
  twelveHourTimeButtonX = AppleButtonX;
  twelveHourTimeButtonY = AMDButtonY;
  twentyFourHourTimeButtonWidth = PS5ButtonWidth;
  twentyFourHourTimeButtonHeight = PS5ButtonHeight;
  twentyFourHourTimeButtonX = AndroidButtonX;
  twentyFourHourTimeButtonY = AMDButtonY;
  CocaColaButtonWidth = PS5ButtonWidth;
  CocaColaButtonHeight = PS5ButtonHeight;
  CocaColaButtonX = lightMouseButtonX;
  CocaColaButtonY = AMDButtonY;
  PepsiButtonWidth = PS5ButtonWidth;
  PepsiButtonHeight = PS5ButtonHeight;
  PepsiButtonX = heavyMouseButtonX;
  PepsiButtonY = AMDButtonY;
  soccerButtonWidth = PS5ButtonWidth;
  soccerButtonHeight = PS5ButtonHeight;
  soccerButtonX = PS5ButtonX;
  soccerButtonY = AMDButtonY+appHeight/3;
  footballButtonWidth = PS5ButtonWidth;
  footballButtonHeight = PS5ButtonHeight;
  footballButtonX = XSXButtonX;
  footballButtonY = soccerButtonY;
  sixteenByTenButtonWidth = PS5ButtonWidth;
  sixteenByTenButtonHeight = PS5ButtonHeight;
  sixteenByTenButtonX = AppleButtonX;
  sixteenByTenButtonY = soccerButtonY;
  eightByFiveButtonWidth = PS5ButtonWidth;
  eightByFiveButtonHeight = PS5ButtonHeight;
  eightByFiveButtonX = AndroidButtonX;
  eightByFiveButtonY = soccerButtonY;
  NikeButtonWidth = PS5ButtonWidth;
  NikeButtonHeight = PS5ButtonHeight;
  NikeButtonX = lightMouseButtonX;
  NikeButtonY = soccerButtonY;
  AdidasButtonWidth = PS5ButtonWidth;
  AdidasButtonHeight = PS5ButtonHeight;
  AdidasButtonX = heavyMouseButtonX;
  AdidasButtonY = soccerButtonY;
  
}
void drawPopulation() {
  if (song1.isPlaying()) {
    song1BarWidth = appWidth*song1.position()/song1.length()*2;
  }
  if (song2.isPlaying()) {
    song2BarWidth = appWidth*song2.position()/song2.length()*2;
  }
}
