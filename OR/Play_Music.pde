float songBarX, songBarY, song1BarWidth, song2BarWidth, songBarHeight;

void songBar() {
  if (song1.isPlaying()) {
    fill(blue);
    rect(songBarX, songBarY, song1BarWidth, songBarHeight);
    noFill();
  }
  if (song2.isPlaying()) {
    fill(red);
    rect(songBarX, songBarY, song2BarWidth, songBarHeight);
  }
}
void songKeyPressedCommands() {
  if (key==' ' && startProgram) {
    if (song1.isPlaying()==false && song2.isPlaying()==false) {
      song1.play();
      song1.loop(-1);
    }
  }
  //if (key=='l' || key=='L') song1.loop(-1); <-- songs already looped
  if (key==CODED && keyCode==RIGHT && startProgram) {
    if (song1.isPlaying()) {
      song1.skip(5000);
    }
    if (song2.isPlaying()) {
      song2.skip(5000);
    }
  }
  if (key==CODED && keyCode==LEFT && startProgram) {
    if (song1.isPlaying()) {
      song1.skip(-5000);
    }
    if (song2.isPlaying()) {
      song2.skip(-5000);
    }
  }
  if (key==CODED && keyCode==UP && startProgram && song2.isPlaying()) {
    song=true;
    song2.pause();
    song2.rewind();
    song1.unmute();
    song1.play();
    song1.loop(-1);
  }
  if (key==CODED && keyCode==DOWN && startProgram && song1.isPlaying()) {
    song=false;
    song1.pause();
    song1.rewind();
    song2.unmute();
    song2.play();
    song2.loop(-1);
  }
  if (key=='p' || key=='P') {
    if (song) {
      if (song1.isPlaying()) {
        song1.pause();
      } else if (song1.position()>= song1.length()*4/5) {
        song1.rewind();
        song1.play();
      } else {
        song1.play();
      }
    } else {
      if (song2.isPlaying()) {
        song2.pause();
      } else if (song2.position()>= song2.length()*4/5) {
        song2.rewind();
        song2.play();
      } else {
        song2.play();
      }
    }
  }
  if (key=='m' || key=='M' && startProgram) {
    if (song1.isPlaying()) {
      if (song1.isMuted()) {
        song1.unmute();
      } else {
        song1.mute();
      }
    }
    if (song2.isPlaying()) {
      if (song2.isMuted()) {
        song2.unmute();
      } else {
        song2.mute();
      }
    }
  }
  if (key=='r' || key=='R' && startProgram) {
    if (song1.isPlaying()) {
      song1.pause();
      song1.rewind();
      song1.play();
    } else if (song2.isPlaying()==false) {
      song1.rewind();
      song1.play();
    }
    if (song2.isPlaying()) {
      song2.pause();
      song2.rewind();
      song2.play();
    } else if (song1.isPlaying()==false) {
      song2.rewind();
      song2.play();
    }
  }
}

void songMousePressedCommands() {
  if (mouseX>=XSXButtonX && mouseY>=XSXButtonY && mouseX<=XSXButtonX+XSXButtonWidth && mouseY<=XSXButtonY+XSXButtonHeight &&  XSXIncorrect==false && PS5Correct==false) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (mouseX>=PS5ButtonX && mouseY>=PS5ButtonY && mouseX<=PS5ButtonX+PS5ButtonWidth && mouseY<=PS5ButtonY+PS5ButtonHeight && XSXIncorrect==false && PS5Correct==false) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (XSXIncorrect==false && PS5Correct && mouseX>=AndroidButtonX && mouseY>=AndroidButtonY && mouseX<=AndroidButtonX+AndroidButtonWidth && mouseY<=AndroidButtonY+AndroidButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (XSXIncorrect==false && PS5Correct && mouseX>=AppleButtonX && mouseY>=AppleButtonY && mouseX<=AppleButtonX+AppleButtonWidth && mouseY<=AppleButtonY+AppleButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (AndroidIncorrect==false && AppleCorrect && mouseX>=lightMouseButtonX && mouseY>=lightMouseButtonY && mouseX<=lightMouseButtonX+lightMouseButtonWidth && mouseY<=lightMouseButtonY+lightMouseButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (AndroidIncorrect==false && AppleCorrect && mouseX>=heavyMouseButtonX && mouseY>=heavyMouseButtonY && mouseX<=heavyMouseButtonX+heavyMouseButtonWidth && mouseY<=heavyMouseButtonY+heavyMouseButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (lightMouseIncorrect==false && heavyMouseCorrect && mouseX>=NvidiaButtonX && mouseY>=NvidiaButtonY && mouseX<=NvidiaButtonX+NvidiaButtonWidth && mouseY<=NvidiaButtonY+NvidiaButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (lightMouseIncorrect==false && heavyMouseCorrect && mouseX>=AMDButtonX && mouseY>=AMDButtonY && mouseX<=AMDButtonX+AMDButtonWidth && mouseY<=AMDButtonY+AMDButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (NvidiaIncorrect==false && AMDCorrect && mouseX>=twelveHourTimeButtonX && mouseY>=twelveHourTimeButtonY && mouseX<=twelveHourTimeButtonX+twelveHourTimeButtonWidth && mouseY<=twelveHourTimeButtonY+twelveHourTimeButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (NvidiaIncorrect==false && AMDCorrect && mouseX>=twentyFourHourTimeButtonX && mouseY>=twentyFourHourTimeButtonY && mouseX<=twentyFourHourTimeButtonX+twentyFourHourTimeButtonWidth && mouseY<=twentyFourHourTimeButtonY+twentyFourHourTimeButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (twelveHourTimeIncorrect==false && twentyFourHourTimeCorrect && mouseX>=PepsiButtonX && mouseY>=PepsiButtonY && mouseX<=PepsiButtonX+PepsiButtonWidth && mouseY<=PepsiButtonY+PepsiButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (twelveHourTimeIncorrect==false && twentyFourHourTimeCorrect && mouseX>=CocaColaButtonX && mouseY>=CocaColaButtonY && mouseX<=CocaColaButtonX+CocaColaButtonWidth && mouseY<=CocaColaButtonY+CocaColaButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (PepsiIncorrect==false && CocaColaCorrect && mouseX>=soccerButtonX && mouseY>=soccerButtonY && mouseX<=soccerButtonX+soccerButtonWidth && mouseY<=soccerButtonY+soccerButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (PepsiIncorrect==false && CocaColaCorrect && mouseX>=footballButtonX && mouseY>=footballButtonY && mouseX<=footballButtonX+footballButtonWidth && mouseY<=footballButtonY+footballButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (soccerIncorrect==false && footballCorrect && mouseX>=sixteenByTenButtonX && mouseY>=sixteenByTenButtonY && mouseX<=sixteenByTenButtonX+sixteenByTenButtonWidth && mouseY<=sixteenByTenButtonY+sixteenByTenButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (soccerIncorrect==false && footballCorrect && mouseX>=eightByFiveButtonX && mouseY>=eightByFiveButtonY && mouseX<=eightByFiveButtonX+eightByFiveButtonWidth && mouseY<=eightByFiveButtonY+eightByFiveButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
  if (sixteenByTenIncorrect==false && eightByFiveCorrect && mouseX>=NikeButtonX && mouseY>=NikeButtonY && mouseX<=NikeButtonX+NikeButtonWidth && mouseY<=NikeButtonX+NikeButtonHeight) {
    incorrectSoundEffect.play();
    incorrectSoundEffect.rewind();
  }
  if (sixteenByTenIncorrect==false && eightByFiveCorrect && mouseX>=AdidasButtonX && mouseY>=AdidasButtonY && mouseX<=AdidasButtonX+AdidasButtonWidth && mouseY<=AdidasButtonX+AdidasButtonHeight) {
    correctSoundEffect.play();
    correctSoundEffect.rewind();
  }
}
