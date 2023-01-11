import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1, song2, correctSoundEffect, incorrectSoundEffect;

int appWidth, appHeight;
Boolean OS=false, startProgram=false, song=true;
void setup() {
  size(displayWidth, displayHeight);
  fullScreen();
  minim = new Minim(this);
  song1 = minim.loadFile("../Sounds/Pentatonix - Carol of the Bells.mp3");
  song2 = minim.loadFile("../Sounds/home depot theme song.mp3");
  correctSoundEffect = minim.loadFile("../Sounds/CorrectSoundEffect.mp3");
  incorrectSoundEffect = minim.loadFile("../Sounds/IncorrectSoundEffect.mp3");
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
  songBar();
  debugging();
}
void mousePressed() {
  if (OS==false && startProgram==false) OS=true;
  if (startProgram && mouseX>=quitButtonX && mouseY >=quitButtonY && mouseX <= quitButtonX+quitButtonWidth && mouseY <=quitButtonY+quitButtonHeight) exit();
  mousePressedChoosing();
  songMousePressedCommands();
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
  songKeyPressedCommands();
  if (key=='r' || key=='R' && key==CODED && keyCode==ALT) {
    PS5Correct=false;
    XSXIncorrect=false;
    AppleCorrect=false;
    AndroidIncorrect=false;
    lightMouseIncorrect=false;
    heavyMouseCorrect=false;
    AMDCorrect=false;
    NvidiaIncorrect=false;
    twelveHourTimeIncorrect=false;
    twentyFourHourTimeCorrect=false;
    CocaColaCorrect=false;
    PepsiIncorrect=false;
    soccerIncorrect=false;
    footballCorrect=false;
    sixteenByTenIncorrect=false;
    eightByFiveCorrect=false;
    NikeIncorrect=false;
    AdidasCorrect=false;
  }
}
