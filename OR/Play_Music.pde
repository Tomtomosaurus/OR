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
