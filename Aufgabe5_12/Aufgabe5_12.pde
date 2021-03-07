/**
 * Rekursive Berechnung von Fibonaccizahlen  mit Funktionen
 */
  
  
long a = 1; //Zählervariable
long fn = 0; //Ergebniss
void setup() 
{
  long f = 8; // Durchläufe
  long start = millis();
  long rf = fibonacci(f,0,1);
  long delta = millis() - start;

  println("Fibonacci von ", f, ":", rf, "nach", delta, "ms.");
  exit();
}

long fibonacci(long f,long f1,long f2 )
{
  fn = f1+f2; // addieren //<>//

  a++; // Zähler erhöhen
  
  if(a!=f) // abfrage ob Zähler = durchläufe
  {
   fibonacci(f,f2,fn);   //Funkiton aufrufen und werde übergeben
  }    
    return fn;    //wert zurückgeben
}
