//Variablen
int rectX =0;
int rectY =0;
int Farbe=255;
int Nr =1;
byte Zahl=8;
char Buchstabe=65;
byte ver=30;

//Setup
void setup()
{
  size(800, 800);
  textSize(30);
}

//Draw
void draw()
{
  for (int a = 0; a<8; ++a)
  {
    for (int i = 0; i<8; ++i)
    {    
     if(((Nr+a)%2)==0)
     {
      fill(255); //kästchenfarbe weis
      rect(i*width/8,a*height/8,width/8,height/8); //kästchen
      fill(0); // schriftfarbe schwart
      text(Buchstabe,i*width/8,a*height/8+ver); //Buchstabe
      text(Zahl,i*width/8+30,a*height/8+ver); //Zahl
     }
     if(((Nr+a)%2)==1)
     {
      fill(0); //Kästchen schwarz
      rect(i*width/8,a*height/8,width/8,height/8); //Kästchen
      fill(255); //Text weiss
      text(Buchstabe,i*width/8,a*height/8+ver); //Buchstabe
      text(Zahl,i*width/8+30,a*height/8+ver); //Zahl
     }
     ++Nr; //Kästchennummer erhöhen
      ++Buchstabe; //Buchstabe jede Runde um 1 erhöhen
    }   
   --Zahl; // Zahl spalte um eins verringern
   Buchstabe=65; //Buchstabe weider zurücksetzen
  }
  
  Zahl=8; // Zahl am ende der Schleife zurücksetzen
}
