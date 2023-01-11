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
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (PS5Correct) {
    tint(10, 255, 255, 255);
    fill(green);
    rect(0, 0, appWidth/3-5, appHeight/3-5);
    noTint();
    //
    image(AppleLogo, appWidth/3+5, 0, appWidth/6-5, appHeight/3-5);
    image(AndroidLogo, appWidth/3+appWidth/6, 0, appWidth/6-5, appHeight/3-5);
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
            rect(appWidth/3+5, appHeight/3+5, appWidth/3-10, appHeight/3-10);
          }
          if (twentyFourHourTimeCorrect) {
            fill(green);
            rect(appWidth/3+5, appHeight/3+5, appWidth/3-10, appHeight/3-10);
            //
            fill(CocaColaButtonColour);
            rect(CocaColaButtonX, CocaColaButtonY, CocaColaButtonWidth, CocaColaButtonHeight);
            fill(PepsiButtonColour);
            rect(PepsiButtonX, PepsiButtonY, PepsiButtonWidth, PepsiButtonHeight);
            if (PepsiIncorrect) {
              fill(red);
              rect(appWidth*2/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-10);
            }
            if (CocaColaCorrect) {
              fill(green);
              rect(appWidth*2/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-10);
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
                  rect(appWidth/3+5, appHeight*2/3+5, appWidth/3-10, appHeight/3);
                }
                if (eightByFiveCorrect) {
                  fill(green);
                  rect(appWidth/3+5, appHeight*2/3+5, appWidth/3-10, appHeight/3);
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
void mousePressedChoosing() {
  if (mouseX>=XSXButtonX && mouseY>=XSXButtonY && mouseX<=XSXButtonX+XSXButtonWidth && mouseY<=XSXButtonY+XSXButtonHeight &&  XSXIncorrect==false && PS5Correct==false) {
    XSXIncorrect=true;
    PS5Correct=false;
  }
  if (mouseX>=PS5ButtonX && mouseY>=PS5ButtonY && mouseX<=PS5ButtonX+PS5ButtonWidth && mouseY<=PS5ButtonY+PS5ButtonHeight && XSXIncorrect==false && PS5Correct==false) {
    XSXIncorrect=false;
    PS5Correct=true;
  }
  if (XSXIncorrect==false && PS5Correct==true && mouseX>=AndroidButtonX && mouseY>=AndroidButtonY && mouseX<=AndroidButtonX+AndroidButtonWidth && mouseY<=AndroidButtonY+AndroidButtonHeight) {
    AndroidIncorrect=true;
    AppleCorrect=false;
  }
  if (XSXIncorrect==false && PS5Correct==true && mouseX>=AppleButtonX && mouseY>=AppleButtonY && mouseX<=AppleButtonX+AppleButtonWidth && mouseY<=AppleButtonY+AppleButtonHeight) {
    AndroidIncorrect=false;
    AppleCorrect=true;
  }
  if (AndroidIncorrect==false && AppleCorrect==true && mouseX>=lightMouseButtonX && mouseY>=lightMouseButtonY && mouseX<=lightMouseButtonX+lightMouseButtonWidth && mouseY<=lightMouseButtonY+lightMouseButtonHeight) {
    lightMouseIncorrect=true;
    heavyMouseCorrect=false;
  }
  if (AndroidIncorrect==false && AppleCorrect==true && mouseX>=heavyMouseButtonX && mouseY>=heavyMouseButtonY && mouseX<=heavyMouseButtonX+heavyMouseButtonWidth && mouseY<=heavyMouseButtonY+heavyMouseButtonHeight) {
    lightMouseIncorrect=false;
    heavyMouseCorrect=true;
  }
  if (lightMouseIncorrect==false && heavyMouseCorrect==true && mouseX>=NvidiaButtonX && mouseY>=NvidiaButtonY && mouseX<=NvidiaButtonX+NvidiaButtonWidth && mouseY<=NvidiaButtonY+NvidiaButtonHeight) {
    NvidiaIncorrect=true;
    AMDCorrect=false;
  }
  if (lightMouseIncorrect==false && heavyMouseCorrect==true && mouseX>=AMDButtonX && mouseY>=AMDButtonY && mouseX<=AMDButtonX+AMDButtonWidth && mouseY<=AMDButtonY+AMDButtonHeight) {
    NvidiaIncorrect=false;
    AMDCorrect=true;
  }
  if (NvidiaIncorrect==false && AMDCorrect==true && mouseX>=twelveHourTimeButtonX && mouseY>=twelveHourTimeButtonY && mouseX<=twelveHourTimeButtonX+twelveHourTimeButtonWidth && mouseY<=twelveHourTimeButtonY+twelveHourTimeButtonHeight) {
    twelveHourTimeIncorrect=true;
    twentyFourHourTimeCorrect=false;
  }
  if (NvidiaIncorrect==false && AMDCorrect==true && mouseX>=twentyFourHourTimeButtonX && mouseY>=twentyFourHourTimeButtonY && mouseX<=twentyFourHourTimeButtonX+twentyFourHourTimeButtonWidth && mouseY<=twentyFourHourTimeButtonY+twentyFourHourTimeButtonHeight) {
    twelveHourTimeIncorrect=false;
    twentyFourHourTimeCorrect=true;
  }
  if (twelveHourTimeIncorrect==false && twentyFourHourTimeCorrect && mouseX>=PepsiButtonX && mouseY>=PepsiButtonY && mouseX<=PepsiButtonX+PepsiButtonWidth && mouseY<=PepsiButtonY+PepsiButtonHeight) {
    PepsiIncorrect=true;
    CocaColaCorrect=false;
  }
  if (twelveHourTimeIncorrect==false && twentyFourHourTimeCorrect && mouseX>=CocaColaButtonX && mouseY>=CocaColaButtonY && mouseX<=CocaColaButtonX+CocaColaButtonWidth && mouseY<=CocaColaButtonY+CocaColaButtonHeight) {
    PepsiIncorrect=false;
    CocaColaCorrect=true;
  }
  if (PepsiIncorrect==false && CocaColaCorrect && mouseX>=soccerButtonX && mouseY>=soccerButtonY && mouseX<=soccerButtonX+soccerButtonWidth && mouseY<=soccerButtonY+soccerButtonHeight) {
    soccerIncorrect=true;
    footballCorrect=false;
  }
  if (PepsiIncorrect==false && CocaColaCorrect && mouseX>=footballButtonX && mouseY>=footballButtonY && mouseX<=footballButtonX+footballButtonWidth && mouseY<=footballButtonY+footballButtonHeight) {
    soccerIncorrect=false;
    footballCorrect=true;
  }
  if (soccerIncorrect==false && footballCorrect && mouseX>=sixteenByTenButtonX && mouseY>=sixteenByTenButtonY && mouseX<=sixteenByTenButtonX+sixteenByTenButtonWidth && mouseY<=sixteenByTenButtonY+sixteenByTenButtonHeight) {
    sixteenByTenIncorrect=true;
    eightByFiveCorrect=false;
  }
  if (soccerIncorrect==false && footballCorrect && mouseX>=eightByFiveButtonX && mouseY>=eightByFiveButtonY && mouseX<=eightByFiveButtonX+eightByFiveButtonWidth && mouseY<=eightByFiveButtonY+eightByFiveButtonHeight) {
    sixteenByTenIncorrect=false;
    eightByFiveCorrect=true;
  }
  if (sixteenByTenIncorrect==false && eightByFiveCorrect && mouseX>=NikeButtonX && mouseY>=NikeButtonY && mouseX<=NikeButtonX+NikeButtonWidth && mouseY<=NikeButtonX+NikeButtonHeight) {
    NikeIncorrect=true;
    AdidasCorrect=false;
  }
  if (sixteenByTenIncorrect==false && eightByFiveCorrect && mouseX>=AdidasButtonX && mouseY>=AdidasButtonY && mouseX<=AdidasButtonX+AdidasButtonWidth && mouseY<=AdidasButtonX+AdidasButtonHeight) {
    NikeIncorrect=false;
    AdidasCorrect=true;
  }
}
