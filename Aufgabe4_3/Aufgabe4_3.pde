size(200, 200);
background(255);
for (int i=200 ; i>0 ; i-=20) {
    stroke(0);
    fill( i+10 ) ;
    ellipse( 100 , 100 , i ,i );   
}
