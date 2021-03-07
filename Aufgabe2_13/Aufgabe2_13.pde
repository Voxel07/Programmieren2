void setup() 
{
  size(800, 800);
}

void draw() 
{
  
background(0, 200, 110);       // definiert Hintergrundfarbe  

line(0,400, mouseX, mouseY);
line(800, 400, mouseY,mouseX);
//stroke(0, 0, 0);
bezier(0, 400, mouseX, mouseY,mouseY,mouseX, 800, 400);
}
