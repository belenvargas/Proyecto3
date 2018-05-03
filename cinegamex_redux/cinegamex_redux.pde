import processing.sound.*;

SoundFile THEME1, THEME2, THEME3, THEME4, THEME, Intro, SFX1;

int PCHAR1, PCHAR2, BG3Y= 720, UI2X = 0;

int TURN = 0;
int HP1 = 100, HP2 = 100;
float movie = 0;
int ellipseX= 80;
int P1X= 100, P2X= 1750;
int screen = 0 ;
PImage MBG1, MBG2, MBG3, MBG4, MBG;
PImage BG1, BG2, BG3, UI1, UI2, UI3, UI4;
PImage P1, P2, P3, P4, P5, PL1, PL2;
PImage P1Sel, P2Sel;
PImage AVATARP1, AVATARP2, AVATAR1, AVATAR2, AVATAR3, AVATAR4, AVATAR5;
PImage ATT1, ATT2, ATT3, ATT4, ATT5, ATT6, ATT7, ATT8, ATT9, ATT10, ATTP1, ATTP2;


void setup()
{
  size (1366, 720);

  MBG1 = loadImage ("img/bg/MBG1.png");
  MBG2 = loadImage ("img/bg/MBG2.png");
  MBG3 = loadImage ("img/bg/MBG3.png");
  MBG4 = loadImage ("img/bg/MBG4.png");
  BG1 = loadImage ("img/bg/BG1.png");
  BG2 = loadImage ("img/bg/BG2.png");
  BG3 = loadImage ("img/bg/BG3.png");
  P1 = loadImage ("img/PLAYERS/P1.png");
  P2 = loadImage ("img/PLAYERS/P2.png");
  P3 = loadImage ("img/PLAYERS/P3.png");
  P4 = loadImage ("img/PLAYERS/P4.png");
  P5 = loadImage ("img/PLAYERS/P5.png");
  P1Sel = loadImage ("img/ui/P1ARROW.png");
  P2Sel = loadImage ("img/ui/P2arrow.png");
  UI1 = loadImage ("img/ui/UI1.png");
  UI2 = loadImage ("img/ui/UI2.png");
  UI3 = loadImage ("img/ui/LIFEBAR.png");
  UI4 = loadImage ("img/ui/UI4.png");
  AVATAR1 = loadImage ("img/ui/AVATAR1.png");
  AVATAR2 = loadImage ("img/ui/AVATAR2.png");
  AVATAR3 = loadImage ("img/ui/AVATAR3.png");
  AVATAR4 = loadImage ("img/ui/AVATAR4.png");
  AVATAR5 = loadImage ("img/ui/AVATAR5.png");
  ATT1 = loadImage ("img/ui/ATT1.png");
  ATT2 = loadImage ("img/ui/ATT2.png");
  ATT3 = loadImage ("img/ui/ATT3.png");
  ATT4 = loadImage ("img/ui/ATT4.png");
  ATT5 = loadImage ("img/ui/ATT5.png");
  ATT6 = loadImage ("img/ui/ATT6.png");
  ATT7 = loadImage ("img/ui/ATT7.png");
  ATT8 = loadImage ("img/ui/ATT8.png");
  ATT9 = loadImage ("img/ui/ATT9.png");
  ATT10 = loadImage ("img/ui/ATT10.png");

  frameRate (24);

  THEME1 = new SoundFile (this, "sound/TH1.mp3");
  THEME2= new SoundFile (this, "sound/TH2.mp3");
  THEME3= new SoundFile (this, "sound/TH3.mp3");
  THEME4= new SoundFile (this, "sound/TH4.mp3");
  Intro = new SoundFile (this, "sound/INTRO.mp3");
  SFX1 = new SoundFile (this, "sound/SFX1.mp3");


  if (screen == 0)
  {

    Intro.amp (0.5);
  }
  if (screen == 1)
  {
    SFX1.amp(2);
    SFX1.loop();
  }
}

void keyPressed()
{

  if (keyCode == 'F' ||keyCode == 'f')
  {
    screen -= 1;
  }
  if (screen == 0)
  {
    Intro.loop();
    if (keyCode == ENTER)
    {
      screen = 1;
    }
  }
  // battle screen keys
  if (screen == 1)
  {


    if (keyCode == 'd' || keyCode == 'D')
    {
      P1X += 280;
    }
    if (keyCode == 'a' || keyCode == 'A')
    {
      P1X -= 280;
    }
    if (keyCode == RIGHT)
    {
      P2X += 280;
    }
    if (keyCode == LEFT)
    {
      P2X -= 280;
    }

    if (keyCode == 'v' || keyCode == 'V' && P1X == 100)
    {
      PCHAR1 = 1;
    }

    if (keyCode == 'v' || keyCode == 'V' && P1X == 380)
    {
      PCHAR1 = 2;
    }
    if (keyCode == 'v' || keyCode == 'V' && P1X == 660)
    {
      PCHAR1 = 3;
    }
    if (keyCode == 'v' || keyCode == 'V' && P1X == 940)
    {
      PCHAR1 = 4;
    }
    if (keyCode == 'v' || keyCode == 'V' && P1X == 1220)
    {
      PCHAR1 = 5;
    }
    if (keyCode == 'p' || keyCode == 'P' && P2X == 150)
    {
      PCHAR2 = 1;
    }
    if (keyCode == 'p' || keyCode == 'P' && P2X == 430)
    {
      PCHAR2 = 2;
    }
    if (keyCode == 'p' || keyCode == 'P' && P2X == 710)
    {
      PCHAR2 = 3;
    }
    if (keyCode == 'p' || keyCode == 'P' && P2X == 990)
    {
      PCHAR2 = 4;
    }
    if (keyCode == 'p' || keyCode == 'P' && P2X == 1270)
    {
      PCHAR2 = 5;
    }
    if (PCHAR1 > 0 && PCHAR2 > 0 && keyCode == ENTER)
    {
      screen = 2 ;
    }
  }

  if (screen == 2)
  {
    if (keyCode == LEFT )
    {
      UI2X -=270;
    }
    if (keyCode == RIGHT )
    {
      UI2X += 270;
    }

    if (keyCode == 'v' || keyCode == 'V' && UI2X == 0 && screen == 2)
    {
      movie = 1;
    }
    if (keyCode == 'v' || keyCode == 'V' && UI2X == 270)
    {
      movie = 2;
    }
    if (keyCode == 'v' || keyCode == 'V' && UI2X == 540)
    {
      movie = random (1, 4);
    }
    if (keyCode == 'v' || keyCode == 'V' && UI2X == 810)
    {
      movie = 3;
    }
    if (keyCode == 'v' || keyCode == 'V' && UI2X == 1080)
    {
      movie = 4;
    }

    if (keyCode == ENTER && movie > 0 )
    {
      screen = 3;
      Intro.stop();
      THEME.amp(0.5);
      THEME.loop();
    }
    if (movie == 1)
    {
      THEME = THEME1;
      MBG = MBG1;
    }
    if (movie == 2)
    {
      THEME = THEME2;
      MBG = MBG2;
    }
    if (movie == 3)
    {
      THEME = THEME3;
      MBG = MBG3;
    }
    if (movie == 4)
    {
      THEME = THEME4;
      MBG = MBG4;
    }
  }

  if (screen == 3)
  {

    if (TURN < 0)
    {
      TURN = 0;
    }
    if (TURN > 1)
    {
      TURN = 1;
    }
    if (keyCode == 'a' || keyCode =='A' && HP1 > 0 && HP2 > 0 && TURN == 0)
    {
      HP2 -= 20;
      TURN = 1;
    }
    if (keyCode == 's' ||keyCode == 'S' && HP1 > 0 && HP2 > 0 && TURN == 0)
    {
      HP2 -= 30;
      TURN = 1;
    }
    if (keyCode == 'd' || keyCode == 'D' && HP1 > 0 && HP2 > 0 && TURN == 0)
    {
      HP2 -= 40;
      TURN = 1;
    }
    if (keyCode == 'i' || keyCode == 'I' && HP1 > 0 && HP2 > 0 && TURN == 1)
    {
      HP1 -= 20;
      TURN = 0;
    }
    if (keyCode == 'o' || keyCode == 'O' && HP1 > 0 && HP2 > 0 && TURN == 1)
    {
      HP1 -= 30;
      TURN = 0;
    }
    if (keyCode == 'P' || keyCode == 'P' && HP1 > 0 && HP2 > 0 && TURN == 1)
    {
      HP1 -= 40;
      TURN = 0;
    }
    if (keyCode == ENTER && HP1 == 0 || HP2 == 0)
    {
      screen = 0;
    }
  }
}

void draw()

{
  //// START SCREEN
  if (screen == 0)
  {
    image( BG1, 0, 0);
    HP1 = 100;
    HP2= 100;
    PCHAR1 = 0;
    PCHAR2 = 0;
    BG3Y= 720;
    UI2X = 0;
    TURN = 0;
    movie = 0;
  }

  ///CHARACTER SELECTION SCREEN 
  if (screen == 1)
  {

    if (P1X >= 1220)
    {
      P1X= 1220;
    }
    if (P1X <= 100)
    {
      P1X= 100;
    }

    if (P2X >= 1270)
    {
      P2X= 1270;
    }
    if (P2X <= 150)
    {
      P2X= 150;
    }
    image (BG2, 0, 0);

    text (P1X, 0, 100);
    text (P2X, 0, 50);
    text (PCHAR1, 0, 150);
    text (PCHAR2, 0, 200);
    fill (#D8BD4C);
    noStroke();

    for (int i = 80; i+50 < 1920; i = i+150) {
      ellipse(i, 100, 50, 50);
    }
    fill (255);
    ellipse (ellipseX, 100, 50, 50);
    ellipse (ellipseX, 100, 50, 50);

    ellipseX += 150;
    if (ellipseX > 1730)
    {
      ellipseX = 80;
    }
    image (P1Sel, P1X, 100);
    image (P2Sel, P2X, 100);
    image( UI1, 0, 0);
  }

  ///STAGE SELECTION SCREEN
  if (screen == 2)
  {
    image (BG3, 0, BG3Y);
    image (UI2, UI2X, 0);
    text (movie, 100, 150);

    if (PCHAR1 == 1)
    {
      PL1 = P1;
      AVATARP1= AVATAR1;
      ATTP1 = ATT1;
    }
    if (PCHAR1 == 2)
    {
      PL1 = P2;
      AVATARP1= AVATAR2;
      ATTP1 = ATT2;
    }
    if (PCHAR1 == 3)
    {
      PL1 = P3;      
      AVATARP1= AVATAR3;
      ATTP1 = ATT3;
    }
    if (PCHAR1 == 4)
    {
      PL1 = P4;
      AVATARP1= AVATAR4;
      ATTP1 = ATT4;
    }
    if (PCHAR1 == 5)
    {
      PL1 = P5;
      AVATARP1= AVATAR5;
      ATTP1 = ATT5;
    }
    if (PCHAR2 == 1)
    {
      PL2 = P1;
      AVATARP2= AVATAR1;
      ATTP2 = ATT6;
    }
    if (PCHAR2 == 2)
    {
      PL2 = P2;
      AVATARP2= AVATAR2;
      ATTP2 = ATT7;
    }
    if (PCHAR2 == 3)
    {
      PL2 = P3;
      AVATARP2= AVATAR3;
      ATTP2 = ATT8;
    }
    if (PCHAR2 == 4)
    {
      PL2 = P4;
      AVATARP2= AVATAR4;
      ATTP2 = ATT9;
    }
    if (PCHAR2 == 5)
    {
      PL2 = P5;
      AVATARP2= AVATAR5;
      ATTP2 = ATT10;
    }





    BG3Y -= 50;

    if ( BG3Y <=0)
    {
      BG3Y = 0;
    }

    if (UI2X >= 1480)
    {
      UI2X = 1480;
    }
    if (UI2X <= 0)
    {
      UI2X = 0;
    }
  }

  // BATTLE SCREEN
  if (screen == 3)
  {
    pushMatrix();
    imageMode(CORNER);

    image (MBG, 0, 0);
    popMatrix();
    fill(255);
    rect(0, height/2+300, 1920, height/2+150);

    //p2 
    pushMatrix();
    scale (1);
    imageMode(CENTER);
    image (PL2, width/2+300, height/2+150);

    popMatrix();
    //p1
    pushMatrix();
    scale (-1, 1);
    imageMode(CENTER);
    image (PL1, -300, height/2+150);
    popMatrix();
    pushMatrix();
    scale (1);
    image (UI3, 1100, 100);
    image (AVATARP2, 1280, 130);
    image (ATTP2, 1250, 600);
    image (ATTP1, 100, 600);

    popMatrix();


    pushMatrix();
    scale (-1, 1);
    image (UI3, -300, 100);
    image (AVATARP1, -60, 130);
    popMatrix();
    imageMode(CORNER);
    textSize(10  );
    scale (1);
    image(UI4, 0, -30);
    text (HP1, width/2-100, height/100);
    text (HP2, width/2+100, height/100);
    text (TURN, width/2, height/100);


    if (HP1 <= 0)
    {
      HP1 = 0;
      textSize(60);
      fill (0);
      text ("JUGADOR 2 GANA", width/2-200, height/2);
      text ("PRESIONA START PARA CONTINUAR", width/2-500, height/2+100);
      THEME.stop();
    }
    if (HP2 <= 0)
    {
      HP2 = 0;
      textSize(60);
      fill (0);
      text ("JUGADOR 1 GANA", width/2-200, height/2);
      text ("PRESIONA START PARA CONTINUAR", width/2-500, height/2+100);
      THEME.stop();
    }
  }
}
