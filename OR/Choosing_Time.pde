void choosingTime() {
  if (PS5Correct==false && XSXIncorrect==false) {
    image(PS5, 0, 0, appWidth/6, appHeight/3-5);
    image(XSX, appWidth/6, 0, appWidth/6-5, appHeight/3-5);
    fill(PS5ButtonColour);
    rect(PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight);
    fill(XSXButtonColour);
    rect(XSXButtonX, XSXButtonY, XSXButtonWidth, XSXButtonHeight);
  }
  if (XSXIncorrect) {
    tint(10, 255, 255, 255);
    fill(red);
    rect(0, 0, appWidth/3-5, appHeight/3-5);
    noTint();
  }
  if (PS5Correct) {
    tint(10, 255, 255, 255);
    fill(green);
    rect(0, 0, appWidth/3-5, appHeight/3-5);
    noTint();
    //
    fill(AppleButtonColour);
    rect(AppleButtonX, AppleButtonY, AppleButtonWidth, AppleButtonHeight);
    fill(AndroidButtonColour);
    rect(AndroidButtonX, AndroidButtonY, AndroidButtonWidth, AndroidButtonHeight);
    if (AndroidIncorrect) {
      fill(red);
      rect(appWidth/3+5, 0, appWidth/3-10, appHeight/3-5);
    }
    if (AppleCorrect) {
      fill(green);
      rect(appWidth/3+5, 0, appWidth/3-10, appHeight/3-5);
      //
      fill(lightMouseButtonColour);
      rect(lightMouseButtonX, lightMouseButtonY, lightMouseButtonWidth, lightMouseButtonHeight);
      fill(heavyMouseButtonColour);
      rect(heavyMouseButtonX, heavyMouseButtonY, heavyMouseButtonWidth, heavyMouseButtonHeight);
      if (lightMouseIncorrect) {
        fill(red);
        rect(appWidth*2/3+5, 0, appWidth/3-5, appHeight/3-5);
      }
      if (heavyMouseCorrect) {
        fill(green);
        rect(appWidth*2/3+5, 0, appWidth/3-5, appHeight/3-5);
        //
        fill(AMDButtonColour);
        rect(AMDButtonX, AMDButtonY, AMDButtonWidth, AMDButtonHeight);
        fill(NvidiaButtonColour);
        rect(NvidiaButtonX, NvidiaButtonY, NvidiaButtonWidth, NvidiaButtonHeight);
        if (NvidiaIncorrect) {
          fill(red);
          rect(0, appHeight/3+5, appWidth/3-5, appHeight/3-10);
        }
        if (AMDCorrect) {
          fill(green);
          rect(0, appHeight/3+5, appWidth/3-5, appHeight/3-10);
          //
          fill(twelveHourTimeButtonColour);
          rect(twelveHourTimeButtonX, twelveHourTimeButtonY, twelveHourTimeButtonWidth, twelveHourTimeButtonHeight);
          fill(twentyFourHourTimeButtonColour);
          rect(twentyFourHourTimeButtonX, twentyFourHourTimeButtonY, twentyFourHourTimeButtonWidth, twentyFourHourTimeButtonHeight);
          if (twelveHourTimeIncorrect) {
            fill(red);
            rect(appWidth/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-5);
          }
          if (twentyFourHourTimeCorrect) {
            fill(green);
            rect(appWidth/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-5);
            //
            fill(CocaColaButtonColour);
            rect(CocaColaButtonX, CocaColaButtonY, CocaColaButtonWidth, CocaColaButtonHeight);
            fill(PepsiButtonColour);
            rect(PepsiButtonX, PepsiButtonY, PepsiButtonWidth, PepsiButtonHeight);
            if (PepsiIncorrect) {
              fill(red);
              rect(appWidth*2/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-5);
            }
            if (CocaColaCorrect) {
              fill(green);
              rect(appWidth*2/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-5);
              //
              fill(soccerButtonColour);
              rect(soccerButtonX, soccerButtonY, soccerButtonWidth, soccerButtonHeight);
              fill(footballButtonColour);
              rect(footballButtonX, footballButtonY, footballButtonWidth, footballButtonHeight);
              if (soccerIncorrect) {
                fill(red);
                rect(0, appHeight*2/3+5, appWidth/3-5, appHeight/3);
              }
              if (footballCorrect) {
                fill(green);
                rect(0, appHeight*2/3+5, appWidth/3-5, appHeight/3);
                //
                fill(sixteenByTenButtonColour);
                rect(sixteenByTenButtonX, sixteenByTenButtonY, sixteenByTenButtonWidth, sixteenByTenButtonHeight);
                fill(eightByFiveButtonColour);
                rect(eightByFiveButtonX, eightByFiveButtonY, eightByFiveButtonWidth, eightByFiveButtonHeight);
                if (sixteenByTenIncorrect) {
                  fill(red);
                  rect(appWidth/3+5, appHeight*2/3+5, appWidth/3-5, appHeight/3);
                }
                if (eightByFiveCorrect) {
                  fill(green);
                  rect(appWidth/3+5, appHeight*2/3+5, appWidth/3-5, appHeight/3);
                  //
                  fill(NikeButtonColour);
                  rect(NikeButtonX, NikeButtonY, NikeButtonWidth, NikeButtonHeight);
                  fill(AdidasButtonColour);
                  rect(AdidasButtonX, AdidasButtonY, AdidasButtonWidth, AdidasButtonHeight);
                  if (NikeIncorrect) {
                    fill(red);
                    rect(appWidth*2/3+5, appHeight*2/3+5, appWidth/3, appHeight/3);
                  }
                  if (AdidasCorrect) {
                    fill(green);
                    rect(appWidth*2/3+5, appHeight*2/3+5, appWidth/3, appHeight/3);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
