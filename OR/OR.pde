import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1, song2;

int appWidth, appHeight;
Boolean OS=false, startProgram=false, song=true;
void setup() {
  size(displayWidth, displayHeight);
  fullScreen();
  minim = new Minim(this);
  song1 = minim.loadFile("../Sounds/Pentatonix - Carol of the Bells.mp3");
  song2 = minim.loadFile("../Sounds/home depot theme song.mp3");
  appWidth = width;
  appHeight = height;
  display();
  population();
  imagePopulation();
  textSetup();
  colourSetupPopulation();
}
void draw() {
  colourDrawPopulation();
  drawPopulation();
  if (OS) {
    nightModeTint();
    backgroundImage();
    splashScreen();
  } else {
    backgroundWhiteScreen();
  }
  if (startProgram) {
    //homeScreen();
    nightModeTint();
    backgroundImage();
    ORGrid();
    choosingTime();
    quitButton();
    if (mouseX>=quitButtonX && mouseX <= quitButtonX+quitButtonWidth && mouseY >=quitButtonY && mouseY <= quitButtonY+quitButtonHeight) {
      quitButtonImage();
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  }
  song1Bar();
  debugging();
}
void mousePressed() {
  if (OS==false && startProgram==false) OS=true;
  if (startProgram && mouseX>=quitButtonX && mouseY >=quitButtonY && mouseX <= quitButtonX+quitButtonWidth && mouseY <=quitButtonY+quitButtonHeight) exit();
  if (mouseX>=PS5ButtonX && mouseY>=PS5ButtonY && mouseX<=PS5ButtonX+PS5ButtonWidth && mouseY<=PS5ButtonY+PS5ButtonHeight && XSXIncorrect==false && PS5Correct==false) {
    PS5Correct=true;
    XSXIncorrect=false;
  }
  if (mouseX>=XSXButtonX && mouseY>=XSXButtonY && mouseX<=XSXButtonX+XSXButtonWidth && mouseY<=XSXButtonY+XSXButtonHeight &&  XSXIncorrect==false && PS5Correct==false) {
    XSXIncorrect=true;
    PS5Correct=false;
  }
}
void keyPressed() {
  if (OS && key==' ') {
    startProgram=true;
    OS=false;
  }
  if (OS || startProgram && key=='n' || key=='N') {
    if (nightMode==true) {
      nightMode=false;
    } else {
      nightMode=true;
    }
  }
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
      } else {
        song1.play();
      }
    } else {
      if (song2.isPlaying()) {
        song2.pause();
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
