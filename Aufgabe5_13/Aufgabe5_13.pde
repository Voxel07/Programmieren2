float [] loesung  = new float [2];

void setup()
{
Rechnung(1,6,1);
}

void Rechnung (int a, int b, int c)
{
loesung [0] = (-b+sqrt((-b)^2-4*a*c))/2*a;
println("X1 =",loesung[0],"X2 =",loesung[1]);
}
