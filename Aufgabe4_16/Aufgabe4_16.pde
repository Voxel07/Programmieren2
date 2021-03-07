//Spieler Variablen
int SpielerX=200;//Spielergröße
int SpielerY=20; //Spielergröße
int SpielerPosX;
int SpielerPosY;
//Ballvariablen
int Ballgroese=40;
int BallX=0;
int BallY=0;
float BallgeschX =1;
float BallgeschY =1;
//sontige Variablen
boolean spielVorbei=false;


//Setup
void setup()
{
  size(1024, 768);
  SpielerPosY = height-30;
  BallX = width/2; // Ballposition
  BallY = height/2; //Ballposition
  BallgeschX= random(-4.0, 4.0);
  BallgeschY= random(-4.0, 4.0);
}

//Draw-----------------------------------
void draw()
{
  background(255);
  Spieler();
  Spielfeldrand();
  Ball();
}


//Spieler--------------------------------
void Spieler()
{
  fill(0, 0, 255);
  rectMode(CENTER);  
  rect(constrain(mouseX, 0+SpielerX/2+10, width-SpielerX/2-10), SpielerPosY, SpielerX, SpielerY);

  //Ball berührt Schläger
  if (BallY == SpielerPosY-SpielerY/2-Ballgroese/2 && BallX>=mouseX-SpielerX/2 && BallX<=mouseX+SpielerX/2)
  {
    SpielerX-=20;
  }
}

//Spielfeldrand-------------------------
void Spielfeldrand()
{
  noStroke();
  fill(0, 0, 0);
  rectMode(CORNER);
  rect(0, 0, 10, height);
  rect(width-10, 0, 10, height);
  rect(10, 0, width-10, 10);
  
  //Ball abprallen lasssen-----------
  if (BallX>width-10-Ballgroese/2||BallX<0+10+Ballgroese/2)
  {
    BallgeschX*=-1;
    
  }
  //Geschwindigkeit erhöhen wenn oberer Rand berührt
  if (BallY<=0+Ballgroese/2+10)
  {
    BallgeschY*=-1;
    BallgeschX*=1.5;
    BallgeschY*=1.5;
  }
  if (BallY>height)
  {
    GameOver();
  }
}

//Ballsteuerung------------------------------------
void Ball()
{
  fill(0, 255, 0); // Ballfarbe
  ellipseMode(CENTER);
  ellipse(BallX, BallY, Ballgroese, Ballgroese); //Ball malen
  BallX += BallgeschX;
  BallY += BallgeschY;

  //Ball berührt Schläger
  if (BallY == SpielerPosY-SpielerY/2-Ballgroese/2 && BallX>=mouseX-SpielerX/2 && BallX<=mouseX+SpielerX/2)
  {
    
    BallgeschY*=-1;
  }
}

//GameOver ----------------
void GameOver()
{
  BallgeschX = 0;
  BallgeschY= 0;

  fill(255, 0, 0);
  textSize(50);

  text("YOU DIED", width/2-120, height/2);
  spielVorbei = true;
}
