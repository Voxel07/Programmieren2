//Variablen
int BallX=125;
int BallY=200;
int Ballgroese;
float GeschwindigkeitX = 3.0;
float GeschwindigkeitY = 1.9;

void setup()//Wird beim Start einmal ausgeführt
{
  Ballgroese=20;
  size(500, 500);//Fenstergröße
  noStroke(); //Kein Rand
  fill(0); // Schwarze füllung
}

void draw() //Wird immer wiederholt
{
  background(255); //Weiser Hintergrund immer weider neu zeichnen
  ellipse(BallX, BallY, Ballgroese, Ballgroese); //Ball zeichenen

  BallX += GeschwindigkeitX; //Geschwindigkeit x
  BallY += GeschwindigkeitY; //Geschwindigkeit y

kleiner();

  if (BallX>width/*-Ballgroese/2*/||BallX<width-width)//+Ballgroese/2)
  {
    GeschwindigkeitX=GeschwindigkeitX*-1; //Ballrichtung umkehren
    Ballgroese = 40; //Ball beim berühren der X Kante vergrößern
  }
  else if (BallY > height/*-Ballgroese/2 */|| BallY<height-height)//+Ballgroese/2)
  {
    GeschwindigkeitY=GeschwindigkeitY*-1;//Ballrichtung umkehren
    Ballgroese =40;//Ball beim berühren der Y Kante vergrößern
  }
}

void kleiner ()
{
  
 if(Ballgroese>20)
 {
   Ballgroese-=0.1f; //Ballgröße verringern
 }
  
}
