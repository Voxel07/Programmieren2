// Rectangle start at location x
float x = 0;
void setup() 
{
   size(200, 200);
}
void draw() 
{
   background(255);
   // Display object
   fill(180);
   rect(x, 100, 20, 20);
   // Increment x: x+1
   if(x<=100)
   {
   x++;
   }
  
}
