int rectX=0;
int rectY=0;
int rectgroese =10;

float rotwert;
float blauwert;
float gruenwert;

void setup ()
{
  size(300, 300);
  background(255);
  noStroke();
}

void draw ()
{ 
  while (rectX < width )
  {
    rotwert = random(0, 255); //Zufallsfarbe zuweisen
    blauwert = random(0, 255);
    gruenwert = random(0, 255);

    fill(rotwert, blauwert, gruenwert); //Farbe in kästchen füllen
    rect(rectX, rectY, rectgroese, rectgroese);
    rectX+=10;
  }
  if (rectX == width&&rectY != height) //wenn die X reihe 
  {
  rectY +=10;
  rectX = 0 ;
  }
}
