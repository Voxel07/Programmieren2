int rectX=0;
int rectY=0;
int rectgroese =10;

float rotwert;
float blauwert;
float gruenwert;

void setup ()
{
  size(300, 800);
  background(255);
  
}

void draw ()
{ 
  for(int i = 0; i<width; i+=10)
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
