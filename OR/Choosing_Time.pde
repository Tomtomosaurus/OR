void choosingTime() {
  if (OS && startProgram) {
    strokeWeight (appHeight/200);
    stroke(0);
    image(PS5, 0, 0, appWidth/6, appHeight/3-5);
    image(XSX, appWidth/6, 0, appWidth/6-5, appHeight/3-5);
    if (PS5Correct==false && XSXIncorrect==false) {
      fill(PS5ButtonColour, 127.5);
      rect(PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight);
      fill(XSXButtonColour, 127.5);
      rect(XSXButtonX, XSXButtonY, XSXButtonWidth, XSXButtonHeight);
    }
    if (XSXIncorrect) {
      noStroke();
      fill(red, 127.5);
      rect(0, 0, appWidth/3-5, appHeight/3-5);
    }
    if (PS5Correct) {
      noStroke();
      fill(green, 127.5);
      rect(0, 0, appWidth/3-5, appHeight/3-5);
      //
      strokeWeight (appHeight/200);
      stroke(0);
      image(AppleLogo, appWidth/3+5, 0, appWidth/6-5, appHeight/3-5);
      image(AndroidLogo, appWidth/3+appWidth/6, 0, appWidth/6-5, appHeight/3-5);
      if (AppleCorrect==false && AndroidIncorrect==false) {
        fill(AppleButtonColour, 127.5);
        rect(AppleButtonX, AppleButtonY, AppleButtonWidth, AppleButtonHeight);
        fill(AndroidButtonColour, 127.5);
        rect(AndroidButtonX, AndroidButtonY, AndroidButtonWidth, AndroidButtonHeight);
      }
      if (AndroidIncorrect) {
        noStroke();
        fill(red, 127.5);
        rect(appWidth/3+5, 0, appWidth/3-10, appHeight/3-5);
      }
      if (AppleCorrect) {
        noStroke();
        fill(green, 127.5);
        rect(appWidth/3+5, 0, appWidth/3-10, appHeight/3-5);
        //
        strokeWeight (appHeight/200);
        stroke(0);
        image (lightMouse, appWidth*2/3+5, 0, appWidth/6-5, appHeight/3-5);
        image (heavyMouse, appWidth*5/6, 0, appWidth/6, appHeight/3);
        if (heavyMouseCorrect==false && lightMouseIncorrect==false) {
          fill(lightMouseButtonColour, 127.5);
          rect(lightMouseButtonX, lightMouseButtonY, lightMouseButtonWidth, lightMouseButtonHeight);
          fill(heavyMouseButtonColour, 127.5);
          rect(heavyMouseButtonX, heavyMouseButtonY, heavyMouseButtonWidth, heavyMouseButtonHeight);
        }
        if (lightMouseIncorrect) {
          noStroke();
          fill(red, 127.5);
          rect(appWidth*2/3+5, 0, appWidth/3-5, appHeight/3-5);
        }
        if (heavyMouseCorrect) {
          noStroke();
          fill(green, 127.5);
          rect(appWidth*2/3+5, 0, appWidth/3-5, appHeight/3-5);
          //
          strokeWeight (appHeight/200);
          stroke(0);
          image (AMDGPU, 0, appHeight/3+5, appWidth/6, appHeight/3-10);
          image (NvidiaGPU, appWidth/6, appHeight/3+5, appWidth/6-5, appHeight/3-10);
          if (AMDCorrect==false && NvidiaIncorrect==false) {
            fill(AMDButtonColour, 127.5);
            rect(AMDButtonX, AMDButtonY, AMDButtonWidth, AMDButtonHeight);
            fill(NvidiaButtonColour, 127.5);
            rect(NvidiaButtonX, NvidiaButtonY, NvidiaButtonWidth, NvidiaButtonHeight);
          }
          if (NvidiaIncorrect) {
            noStroke();
            fill(red, 127.5);
            rect(0, appHeight/3+5, appWidth/3-5, appHeight/3-10);
          }
          if (AMDCorrect) {
            noStroke();
            fill(green, 127.5);
            rect(0, appHeight/3+5, appWidth/3-5, appHeight/3-10);
            //
            fill(255, 127.5);
            rect (appWidth/3+5, appHeight/3+5, appWidth/3-10, appHeight/3-10);
            strokeWeight (appHeight/200);
            stroke(0);
            image (twelveHourTime, appWidth/3+5, appHeight/3+5, appWidth/6-5, appHeight/3-10);
            image (twentyFourHourTime, appWidth/2, appHeight/3+5, appWidth/6-5, appHeight/3-10);
            if (twentyFourHourTimeCorrect==false && twelveHourTimeIncorrect==false) {
              fill(twelveHourTimeButtonColour, 127.5);
              rect(twelveHourTimeButtonX, twelveHourTimeButtonY, twelveHourTimeButtonWidth, twelveHourTimeButtonHeight);
              fill(twentyFourHourTimeButtonColour, 127.5);
              rect(twentyFourHourTimeButtonX, twentyFourHourTimeButtonY, twentyFourHourTimeButtonWidth, twentyFourHourTimeButtonHeight);
            }
            if (twelveHourTimeIncorrect) {
              noStroke();
              fill(red, 127.5);
              rect(appWidth/3+5, appHeight/3+5, appWidth/3-10, appHeight/3-10);
            }
            if (twentyFourHourTimeCorrect) {
              noStroke();
              fill(green, 127.5);
              rect(appWidth/3+5, appHeight/3+5, appWidth/3-10, appHeight/3-10);
              //
              strokeWeight (appHeight/200);
              stroke(0);
              image (CocaColaCan, appWidth*2/3+5, appHeight/3+5, appWidth/6-5, appHeight/3-10);
              image (PepsiCan, appWidth*5/6, appHeight/3+5, appWidth/6, appHeight/3-10);
              if (CocaColaCorrect==false && PepsiIncorrect==false) {
                fill(CocaColaButtonColour, 127.5);
                rect(CocaColaButtonX, CocaColaButtonY, CocaColaButtonWidth, CocaColaButtonHeight);
                fill(PepsiButtonColour, 127.5);
                rect(PepsiButtonX, PepsiButtonY, PepsiButtonWidth, PepsiButtonHeight);
              }
              if (PepsiIncorrect) {
                noStroke();
                fill(red, 127.5);
                rect(appWidth*2/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-10);
              }
              if (CocaColaCorrect) {
                noStroke();
                fill(green, 127.5);
                rect(appWidth*2/3+5, appHeight/3+5, appWidth/3-5, appHeight/3-10);
                //
                image(soccerBall, 0, appHeight*2/3+5, appWidth/6, appHeight/3-5);
                image(footballBall, appWidth/6, appHeight*2/3+5, appWidth/6-5, appHeight/3-5);
                if (footballIncorrect==false && soccerCorrect==false) {
                  strokeWeight (appHeight/200);
                  stroke(0);
                  fill(soccerButtonColour, 127.5);
                  rect(soccerButtonX, soccerButtonY, soccerButtonWidth, soccerButtonHeight);
                  fill(footballButtonColour, 127.5);
                  rect(footballButtonX, footballButtonY, footballButtonWidth, footballButtonHeight);
                }
                if (footballIncorrect) {
                  noStroke();
                  fill(red, 127.5);
                  rect(0, appHeight*2/3+5, appWidth/3-5, appHeight/3);
                }
                if (soccerCorrect) {
                  noStroke();
                  fill(green, 127.5);
                  rect(0, appHeight*2/3+5, appWidth/3-5, appHeight/3);
                  //
                  image (sixteenByTen, appWidth/3+5, appHeight*2/3+5, appWidth/6-5, appHeight/3-5);
                  image (eightByFive, appWidth/2, appHeight*2/3+5, appWidth/6-5, appHeight/3-5);
                  if (eightByFiveCorrect==false && sixteenByTenIncorrect==false) {
                    strokeWeight (appHeight/200);
                    stroke(0);
                    fill(sixteenByTenButtonColour, 127.5);
                    rect(sixteenByTenButtonX, sixteenByTenButtonY, sixteenByTenButtonWidth, sixteenByTenButtonHeight);
                    fill(eightByFiveButtonColour, 127.5);
                    rect(eightByFiveButtonX, eightByFiveButtonY, eightByFiveButtonWidth, eightByFiveButtonHeight);
                  }
                  if (sixteenByTenIncorrect) {
                    noStroke();
                    fill(red, 127.5);
                    rect(appWidth/3+5, appHeight*2/3+5, appWidth/3-10, appHeight/3);
                  }
                  if (eightByFiveCorrect) {
                    noStroke();
                    fill(green, 127.5);
                    rect(appWidth/3+5, appHeight*2/3+5, appWidth/3-10, appHeight/3);
                    //
                    image (NikeLogo, appWidth*2/3+5, appHeight*2/3+5, appWidth/6-5, appHeight/3-5);
                    image (AdidasLogo, appWidth*5/6, appHeight*2/3+5, appWidth/6, appHeight/3-5);
                    if (AdidasCorrect==false && NikeIncorrect==false) {
                      strokeWeight (appHeight/200);
                      stroke(0);
                      fill(NikeButtonColour, 127.5);
                      rect(NikeButtonX, NikeButtonY, NikeButtonWidth, NikeButtonHeight);
                      fill(AdidasButtonColour, 127.5);
                      rect(AdidasButtonX, AdidasButtonY, AdidasButtonWidth, AdidasButtonHeight);
                    }
                    if (NikeIncorrect) {
                      noStroke();
                      fill(red, 127.5);
                      rect(appWidth*2/3+5, appHeight*2/3+5, appWidth/3, appHeight/3);
                    }
                    if (AdidasCorrect) {
                      noStroke();
                      fill(green, 127.5);
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
    noStroke();
  }
}
void mousePressedChoosing() {
  if (OS && startProgram) {
    if (mouseX>=XSXButtonX && mouseY>=XSXButtonY && mouseX<=XSXButtonX+XSXButtonWidth && mouseY<=XSXButtonY+XSXButtonHeight &&  XSXIncorrect==false && PS5Correct==false) {
      XSXIncorrect=true;
      PS5Correct=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (mouseX>=PS5ButtonX && mouseY>=PS5ButtonY && mouseX<=PS5ButtonX+PS5ButtonWidth && mouseY<=PS5ButtonY+PS5ButtonHeight && XSXIncorrect==false && PS5Correct==false) {
      XSXIncorrect=false;
      PS5Correct=true;
      correctSoundEffect.play();
    }
    if (XSXIncorrect==false && PS5Correct==true && mouseX>=AndroidButtonX && mouseY>=AndroidButtonY && mouseX<=AndroidButtonX+AndroidButtonWidth && mouseY<=AndroidButtonY+AndroidButtonHeight) {
      AndroidIncorrect=true;
      AppleCorrect=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (XSXIncorrect==false && PS5Correct==true && mouseX>=AppleButtonX && mouseY>=AppleButtonY && mouseX<=AppleButtonX+AppleButtonWidth && mouseY<=AppleButtonY+AppleButtonHeight) {
      AndroidIncorrect=false;
      AppleCorrect=true;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
    if (AndroidIncorrect==false && AppleCorrect==true && mouseX>=lightMouseButtonX && mouseY>=lightMouseButtonY && mouseX<=lightMouseButtonX+lightMouseButtonWidth && mouseY<=lightMouseButtonY+lightMouseButtonHeight) {
      lightMouseIncorrect=true;
      heavyMouseCorrect=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (AndroidIncorrect==false && AppleCorrect==true && mouseX>=heavyMouseButtonX && mouseY>=heavyMouseButtonY && mouseX<=heavyMouseButtonX+heavyMouseButtonWidth && mouseY<=heavyMouseButtonY+heavyMouseButtonHeight) {
      lightMouseIncorrect=false;
      heavyMouseCorrect=true;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
    if (lightMouseIncorrect==false && heavyMouseCorrect==true && mouseX>=NvidiaButtonX && mouseY>=NvidiaButtonY && mouseX<=NvidiaButtonX+NvidiaButtonWidth && mouseY<=NvidiaButtonY+NvidiaButtonHeight) {
      NvidiaIncorrect=true;
      AMDCorrect=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (lightMouseIncorrect==false && heavyMouseCorrect==true && mouseX>=AMDButtonX && mouseY>=AMDButtonY && mouseX<=AMDButtonX+AMDButtonWidth && mouseY<=AMDButtonY+AMDButtonHeight) {
      NvidiaIncorrect=false;
      AMDCorrect=true;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
    if (NvidiaIncorrect==false && AMDCorrect==true && mouseX>=twelveHourTimeButtonX && mouseY>=twelveHourTimeButtonY && mouseX<=twelveHourTimeButtonX+twelveHourTimeButtonWidth && mouseY<=twelveHourTimeButtonY+twelveHourTimeButtonHeight) {
      twelveHourTimeIncorrect=true;
      twentyFourHourTimeCorrect=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (NvidiaIncorrect==false && AMDCorrect==true && mouseX>=twentyFourHourTimeButtonX && mouseY>=twentyFourHourTimeButtonY && mouseX<=twentyFourHourTimeButtonX+twentyFourHourTimeButtonWidth && mouseY<=twentyFourHourTimeButtonY+twentyFourHourTimeButtonHeight) {
      twelveHourTimeIncorrect=false;
      twentyFourHourTimeCorrect=true;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
    if (twelveHourTimeIncorrect==false && twentyFourHourTimeCorrect && mouseX>=PepsiButtonX && mouseY>=PepsiButtonY && mouseX<=PepsiButtonX+PepsiButtonWidth && mouseY<=PepsiButtonY+PepsiButtonHeight) {
      PepsiIncorrect=true;
      CocaColaCorrect=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (twelveHourTimeIncorrect==false && twentyFourHourTimeCorrect && mouseX>=CocaColaButtonX && mouseY>=CocaColaButtonY && mouseX<=CocaColaButtonX+CocaColaButtonWidth && mouseY<=CocaColaButtonY+CocaColaButtonHeight) {
      PepsiIncorrect=false;
      CocaColaCorrect=true;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
    if (PepsiIncorrect==false && CocaColaCorrect && mouseX>=footballButtonX && mouseY>=footballButtonY && mouseX<=footballButtonX+footballButtonWidth && mouseY<=footballButtonY+footballButtonHeight) {
      soccerCorrect=false;
      footballIncorrect=true;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (PepsiIncorrect==false && CocaColaCorrect && mouseX>=soccerButtonX && mouseY>=soccerButtonY && mouseX<=soccerButtonX+soccerButtonWidth && mouseY<=soccerButtonY+soccerButtonHeight) {
      soccerCorrect=true;
      footballIncorrect=false;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
    if (footballIncorrect==false && soccerCorrect && mouseX>=sixteenByTenButtonX && mouseY>=sixteenByTenButtonY && mouseX<=sixteenByTenButtonX+sixteenByTenButtonWidth && mouseY<=sixteenByTenButtonY+sixteenByTenButtonHeight) {
      sixteenByTenIncorrect=true;
      eightByFiveCorrect=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (footballIncorrect==false && soccerCorrect && mouseX>=eightByFiveButtonX && mouseY>=eightByFiveButtonY && mouseX<=eightByFiveButtonX+eightByFiveButtonWidth && mouseY<=eightByFiveButtonY+eightByFiveButtonHeight) {
      sixteenByTenIncorrect=false;
      eightByFiveCorrect=true;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
    if (sixteenByTenIncorrect==false && eightByFiveCorrect && mouseX>=NikeButtonX && mouseY>=NikeButtonY && mouseX<=NikeButtonX+NikeButtonWidth && mouseY<=NikeButtonX+NikeButtonHeight) {
      NikeIncorrect=true;
      AdidasCorrect=false;
      song1.pause();
      song1.rewind();
      song2.pause();
      song2.rewind();
      incorrectSoundEffect.play();
    }
    if (sixteenByTenIncorrect==false && eightByFiveCorrect && mouseX>=AdidasButtonX && mouseY>=AdidasButtonY && mouseX<=AdidasButtonX+AdidasButtonWidth && mouseY<=AdidasButtonX+AdidasButtonHeight) {
      NikeIncorrect=false;
      AdidasCorrect=true;
      correctSoundEffect.pause();
      correctSoundEffect.rewind();
      correctSoundEffect.play();
    }
  }
}
