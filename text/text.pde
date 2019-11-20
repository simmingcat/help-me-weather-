color darkred = #AA0000, pink = #FFB9B9;

float titleX, titleY, titleRectX, titleRectY;
titleX = width * 1/16 ;
titleY = height * 1/38 ;
titleRectX = width * 14/16 ;
titleRectY = height * 1/8 ;

fullScreen();
String title = "potato";
PFont titleFont;
println("Start Of Console");
rect(titleX, titleY, titleRectX, titleRectY, 4);
titleFont = createFont("KunstlerScript",48);

fill(darkred);
textAlign(CENTER,CENTER);
textFont(titleFont, 50);
text(title, titleX, titleY, titleRectX, titleRectY );
