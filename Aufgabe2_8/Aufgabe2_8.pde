int GroeseX = 0;
int GroeseY = 0;
// setup() wird einmalig aufgerufen
void setup() {
  size(200,200);
  background(255);
}
// draw() wird mehrmalig aufgerufen
void draw() 
{
  // Füllfarbe
  fill(255,0,0);
  // Rechteck mit wachsender Größe
  rect(0,0,GroeseX,GroeseY);
  // erhöhen des Wertes bei jedem Durchlauf der draw()-Funktion
  GroeseX++;
  GroeseY++;
}
