void setup ()
{
size (200, 200);
background (255);
}

void draw()
{
  background (255);
  
int Mittelpunktx= mouseX;
int Mittelpunkty= mouseY;

 

line (Mittelpunktx, Mittelpunkty, 100,0);
line (Mittelpunktx, Mittelpunkty, 0, 200);
line (Mittelpunktx, Mittelpunkty, 200, 200);
}
