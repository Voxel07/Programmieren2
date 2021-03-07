int x = 0;
int speed = 1;
void setup() {
  size(200, 200);
  smooth();
}
void draw() {
  background(255);
  bounce(); 
  move();
  display();
}
// Funktion um den Ball horizontal zu bewegen
void move() { 
  x = x + speed;
}
// Funktion um den Ball 'bouncen' zu lassen
void bounce() {
  if ((x > width) || (x < 0)) {
    speed = speed * - 1;
  }
}
// Funktion um den Ball darzustellen
void display() {
  stroke(0);
  fill(175);
  ellipse(x, 100, 32, 32);
}
