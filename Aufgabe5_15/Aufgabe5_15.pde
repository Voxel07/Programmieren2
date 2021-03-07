//Variablen
int x = 0;
int y = -250;
int wartezeit = 0;
int Farbe = 0;
int zahl= 0;
String text = "tick";

void setup()
{
  frameRate(6);
  size(800, 800);
  background(50);
  noStroke();
}

void draw()
{

  translate(width/2, height/2);
  //Zahlen verstecken
  rectMode(CENTER);
  fill(50);
  ellipse(0, 0, 450, 450);
  //
  Zahl();
  tick();

  for (int i=0; i<=wartezeit; i+=6)
  {
    malen();
    rotate(6*(2*PI/360));   

    if ( wartezeit==360)
    {
      wartezeit = 0; // begrenzt die Punkte pro durchlauf
      Farbe += 125; // ändet die Farbe nach einem durchlauf
      zahl=0; // setzt den zahlenwert auf 0 zurück

      if (Farbe>=255)
      {
        Farbe = 0; // wenn die farbe weis erreicht, wird sie zurück gesetzt 
      }
    }
  }  
  wartezeit+=1; // jede runde darf ein punkt mehr gemalt werden
  zahl = wartezeit/6+1; // Zahl jede sek um 1 erhöhen
  
}

void malen()//Punkte zeichen
{
  fill(Farbe);
  ellipseMode(CENTER);
  ellipse(x, y, 20, 20);
}

void Zahl()
{
  fill(Farbe);
  textSize(50);
  text(zahl, -35, 10);
}
void tick()//Tick tock wechseln
{
if (zahl%2==1)
{
text = "tick";
}
else if (zahl%2==0)
{
  text ="tock";
}
  fill(255);
  textSize(50);
  text(text, -55, 100);
}
