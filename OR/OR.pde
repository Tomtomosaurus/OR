import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song1, song2, correctSoundEffect, incorrectSoundEffect, victorySong;

int appWidth, appHeight;
Boolean OS=false, startProgram=false, song=true;
void setup() {
  size(displayWidth, displayHeight); //doesn't actually do anything since it's over-written by fullscreen. Same resolution, different type of window. Funnily enough, having both size(); and fullScreen(); only works in Processing 4.X.X, not 3.X.X. If you try to put both size(); and fullScreen(); in the same code in Processing 3, it'll give you an error saying that you can't have both.
  fullScreen();
  minim = new Minim(this);
  song1 = minim.loadFile("../Sounds/Carol of the Bells (Original) Lyrics.mp3");
  song2 = minim.loadFile("../Sounds/home depot theme song.mp3");
  correctSoundEffect = minim.loadFile("../Sounds/CorrectSoundEffect.mp3");
  incorrectSoundEffect = minim.loadFile("../Sounds/Spongebob Disappointed Sound Effect.mp3");
  victorySong = minim.loadFile("../Sounds/02 Title.mp3");
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
    homeScreen();
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
    soccerCorrect=false;
    footballIncorrect=false;
    sixteenByTenIncorrect=false;
    eightByFiveCorrect=false;
    NikeIncorrect=false;
    AdidasCorrect=false;
    correctSoundEffect.pause();
    correctSoundEffect.rewind();
    incorrectSoundEffect.pause();
    incorrectSoundEffect.rewind();
  }
}
