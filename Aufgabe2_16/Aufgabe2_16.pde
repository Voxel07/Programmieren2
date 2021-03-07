void setup() 
{
  size(800, 800);
  background(0);// Hintergrundfarbe  
}

void draw() 
{
  stroke(255); //Strichfarbe
  line(pmouseX,pmouseY,mouseX,mouseY); //Linie zwischen akuteller und alter Mauspos


}
