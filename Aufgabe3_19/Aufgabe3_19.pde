int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup () 
{
   size (200, 200); 
} 

void draw () 
{
   background (255);
   stroke (0);
   if ( mouseX>50 && mouseX<150 && mouseY>50 && mouseY<125 )
   {
      fill(0);//Schwarz
   } 
   else 
   {
      fill(125);//Grau
   }
   rect (x, y, w, h);//Rechteck
}
