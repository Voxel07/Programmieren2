void setup() {
  // framerate auf 2 Bilder pro Sekunde begrenzt
  // um das Ergebnis besser zu betrachten
  frameRate(2);
}
void draw() {
  background(255);
  float i = random(0, 100);
  // Bedingung i zwischen 50 und 80
  if ( i>50&&i<80 ) 
    fill(0, 255, 0); // grün
  else 
    fill(200); // grau
  // Rechteck, welches den Bereich 50 bis 80 markiert
  // und die Farbe der Bedingung annimmt
  noStroke();
  rectMode(CORNERS);
  rect(0, 50, width, 80);
  // Linie, die die Zufallszahl i grafisch
  // über die y-Position darstellt
  stroke(255, 0, 0);
  line(0, i, width, i);
}
