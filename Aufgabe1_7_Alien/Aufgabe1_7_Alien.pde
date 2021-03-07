size(500,500);

//Antenne
fill(0,255,0);//Grün
rectMode(CENTER);
rect(180,30,10,25);
rect(320,30,10,25);
fill(0,0,255);//Blau
ellipse(180,10,30,20);
ellipse(320,10,30,20);

//Kopf
fill(0,255,0);//Grün
ellipse(250,75,200,100);

//Augen
fill(255,0,0);//Rot
ellipseMode(CENTER);
ellipse(200,60,60,30);
ellipse(300,60,60,30);

//Hals
fill(255,255,255);
rectMode(CENTER);
rect(250,140,30,30);

//Körper
ellipse(250,275,150,250);

//Beine
line(200,370,180,470);
line(300,370,320,470);
