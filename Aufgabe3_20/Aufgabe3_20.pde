int Farbe1, Farbe2, Farbe3, Farbe4;

void setup () 
{
  size (200,200);
  background (0);
}

void draw ()
{ 
//Oben Links-----------------
  if(Farbe1>0)
  {
  Farbe1-=5;
  }
  fill(Farbe1);
  rect (0,0,100,100);
  
//Oben Rechts-----------------
  if(Farbe2>0)
  {
  Farbe2-=5;
  }
  fill(Farbe2);
  rect (100,0,100,100);
  
//Unten Links-----------------
  if(Farbe3>0)
  {
  Farbe3-=5;
  }
  fill(Farbe3);
  rect (0,100,100,100);
   
//Unten Rechts-----------------
  if(Farbe4>0)
  {
  Farbe4-=5;
  }
  fill(Farbe4);
  rect (100,100,100,100);
  
  
  //Trennlinien
  stroke (255);
  line (100,0,100,200);
  line (0,100,200,100);

  // Die Farbe des jeweiligen Kästchens wird gesetzt  
  if (mouseX < 100 && mouseY < 100)
  {
    Farbe1 = 255;
  }
  else if (mouseX > 100 && mouseY < 100)
  {
    Farbe2 = 255;
  }
  else if (mouseX < 100 && mouseY > 100)
  {
    Farbe3 = 255;
  }
  else if (mouseX > 100 && mouseY > 100)
  {
    Farbe4 = 255;
  }
}
