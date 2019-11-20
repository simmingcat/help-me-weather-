color darkred = #AA0000;
String title = "Kanazawa";
PFont titleFont;

void textSetup(){

}

void textDraw(){
  
  titleFont = createFont("Italic",48);
  fill(darkred);
textAlign(CENTER,CENTER);
textFont(titleFont, 40);
text(title, titleX, titleY, titleRectX, titleRectY);
  
println("Start Of Console");
}

void textCalc(){
  
}

//float textCalucator(){
  //return size
  
//}
