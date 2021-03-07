//Variablen

int p = 0;
float[] xPos = new float [200]; //Array für x Punkte
float[] yPos = new float [200]; //Array für y Punkte

void setup()
{
  translate(width/2, height/2); //Nullpunkt in die Mitte legen
  background(255); // Hintergrund weiß
  size(800, 800); //Fenstergröße

  Hintergrund(); // Koordinatenkreuz als Hintergrund
  rotate(PI); // Achsen drehen
  Zeichnen(2,-6,0); //Die Parabel zeichnen. a,b,c als Parameter eingeben
}

void Zeichnen (int a, int b, int c)
{
  for (int x=20; x>=-20; --x) //x Werte von 20 bis -20 durchlaufen //<>//
  {      
    xPos[p]=x*10; // x Werte in Array speichern
    yPos[p]=a*x*x + b * x+c; // y werte berechnen und in array Speichern
    ++p; // Arrayposition erhöhen
  }
  for (int i =0; i<40; i+=1) //Alle arrapositionen abarbeiten
  {
    stroke(255, 0, 0); // Rote linie
    println("Pos", i, "Wert_X", xPos[i], "Wert_Y", yPos[i]); //Zur kontrolle X und Y Werte in der Konsole ausgeben
    line(xPos[i], yPos[i], xPos[i+1], yPos[i+1]);//Linie von P auf P+1 zeichnen
  }
}

void Hintergrund()
{
  stroke(0); // Schwarze Linie
  line(0, -height/2, 0, height); // Y Achse
  line(-width/2, 0, width, 0); //X Achse

  for (int i=-width/2; i<=width; i+=10) //Striche auf X und Y Achse
  {
    line (-5, i, 5,i );
    line (i, 5, i, -5);
  }
}
