// Variable deklarieren
int Kreisgroese = 1;

void setup () {
  size(500,500); // Fenstergröße
  background(0,255,0); // Hintergrundfarbe
}

void draw () 
{
  ellipse(mouseX,mouseY,Kreisgroese,Kreisgroese); // Kreis wird um die Maus geezeichnet
  Kreisgroese++; // Kreisgroese wird erhöt
}
