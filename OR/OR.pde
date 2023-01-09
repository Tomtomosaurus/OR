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
  songBar();
  debugging();
}
void mousePressed() {
  if (OS==false && startProgram==false) OS=true;
  if (startProgram && mouseX>=quitButtonX && mouseY >=quitButtonY && mouseX <= quitButtonX+quitButtonWidth && mouseY <=quitButtonY+quitButtonHeight) exit();
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
