int rectX = 0;
boolean start = false;
void setup () 
{
   size (200, 200); 
} 
void draw () 
{
   background (100);
   stroke (255);
   fill (180);
   rect (rectX, 100, 20, 20);
   
   if(rectX <100&&start==true)// Würfel von links nach rechts
   {
   rectX++;
   }
   println(start);
}

void mousePressed ()  //Wenn Maustaste links gedrückt
{
  if(start==false)
  {
   start=true;
  }
  else if(start==true)
  {
  start=false;
  }
}
