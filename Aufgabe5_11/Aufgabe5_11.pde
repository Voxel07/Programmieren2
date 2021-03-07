/**
 * Iterative Berechnung von Fibonaccizahlen  mit Funktionen
 */

void setup() {
  long f = 8;
  long start = millis();
  long rf = fibonacci(f);
  long delta = millis() - start;

  println("Fibonacci von ", f, ":", rf, "nach", delta, "ms.");
  exit();
}

long fibonacci(long n)
{
    int fn = 0;
    int f1 = 1;
    int f2 = 1;
    
    for ( int i = 0; i<n-2; ++i)
    {
    fn = f1+f2;
    f1=f2;
    f2=fn;
    }
    
    return fn;
    
    
}
