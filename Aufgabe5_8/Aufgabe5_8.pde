void setup()
{
  println(Rechnung(32.0));
}

float Rechnung(float Fahrenheit)
{
  float Celsius;
  Celsius =(Fahrenheit-32)*(5.0/9);
  return Celsius;
}
