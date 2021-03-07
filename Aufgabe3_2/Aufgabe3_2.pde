float note = random (0, 100);

if ( note>=90 ) {
  println ("Note: sehr gut; Punktezahl: " + note);
} 
else if ( note<90&&note>=80 ) {
  println ( "Note: gut, Punktzahl: " + note );
} 
else if ( note<80&&note>=70 ) {
  println ( "Note: befriedigend, Punktzahl: " + note  );
} 
else if ( note<70&&note>=60 ) {
  println ( "Note: ausreichend, Punktzahl: " + note  );
} 
else {
  println ( "Note: mangelhaft, Punktzahl: " + note  );
}
