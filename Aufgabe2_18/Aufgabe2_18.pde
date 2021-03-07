void setup()
{
size(500,500);
}
void draw()
{
background(255);

//Antenne
fill(0,255,0);//Grün
rectMode(CENTER);
rect(mouseX-60,mouseY-245,10,25);
rect(mouseX+60,mouseY-245,10,25);
fill(0,0,255);//Blau
ellipse(mouseX-60,mouseY-265,30,20);
ellipse(mouseX+60,mouseY-265,30,20);

//Kopf
fill(0,255,0);//Grün
ellipse(mouseX,mouseY-200,200,100);

//Augen
fill(mouseX/2,mouseY/2,50);//Rot
ellipseMode(CENTER);
ellipse(mouseX-50,mouseY-215,60,30);
ellipse(mouseX+50,mouseY-215,60,30);

//Hals
fill(255,255,255);
rectMode(CENTER);
rect(mouseX,mouseY-135,30,30);

//Körper
ellipse(mouseX,mouseY,150,250);

//Beine
line(mouseX-50,mouseY+95,pmouseX-70,pmouseY+195);
line(mouseX+50,mouseY+95,pmouseX+80,pmouseY+195);
}
