color darkred = #AA0000;
PFont titleFont;
String title = "Kanazawa";
String quit = "X";
String Kanazawa = "Kanazawa";
String Kyoto = "Kyoto";
String GeorgeTown = "GeorgeTown";

void textSetup(){
}

void textDraw(){  
titleFont = createFont("Italic", 48);
fill(darkred);

textAlign(CENTER,CENTER);
textFont(titleFont, 40);
text(title, titleX, titleY, titleRectX, titleRectY);

textAlign(CENTER,CENTER);
textFont(titleFont, 20);
text(quit ,quitX, quitY, quitRectX, quitRectY);

textAlign(CENTER,CENTER);
textFont(titleFont, 20);
text(Kanazawa, apiX1, apiY1, apiRectX1, apiRectY1);

textAlign(CENTER,CENTER);
textFont(titleFont, 20);
text(Kyoto, apiX2, apiY2, apiRectX2, apiRectY2);

textAlign(CENTER,CENTER);
textFont(titleFont, 20);
text(GeorgeTown, apiX3, apiY3, apiRectX3, apiRectY3);

}

void textCalc(){
  
}

//float textCalucator(){
  //return size
  
//}
