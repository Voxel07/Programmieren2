int endY; // Begrenzt die Anzahl an lienen die pro durchlauf gezeichnet werden.

void setup() 
{
   size(200,200);
   frameRate(5); // begrenzt die Framerate
   endY = 4 ; //stanadart
}

void draw()
{
   background(255); //Hintergrund neu zeichnen
   for (int y = 10 ; y<endY ; y+=10 ) 
   {
     stroke(0); //Linienfarbe
     line(0,y,width,y);  
   }
   
   endY+=4;//Linienlimit erhöhen
  
} 
