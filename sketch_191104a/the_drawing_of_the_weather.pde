color pink = 0;
float titleX, titleY, titleRectX, titleRectY;
float quitX, quitY, quitRectX, quitRectY;
float apiX1, apiY1, apiRectX1, apiRectY1;
float apiX2, apiY2, apiRectX2, apiRectY2;
float apiX3, apiY3, apiRectX3, apiRectY3;
float CurrentX, CurrentY, CurrentApiX, CurrentApiY;
float weatherX, weatherY, weatherApiX, weatherApiY;

int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2;
color white = #FFFFFC ;

void setWeather(){
   b1 = color(#FFBCBC);
  b2 = color(#F7FF89);
  
  titleX = width * 1/16 ;
  titleY = height * 1/38 ;
  titleRectX = width * 14/16 ;
  titleRectY = height * 1/8 ;
  
  CurrentX = width * 2/16 ;
  CurrentY = height * 105/700 ;
  CurrentApiX = width * 12/16 ;
  CurrentApiY = height * 1/32 ;
  
  quitX = width * 38.9/600 ;
  quitY = height *21/800;
  quitRectX = width * 50/600 ;
  quitRectY = height *30/800;
  
  apiX1 = width * 1/16 ;
  apiY1 = height * 600/700 ;
  apiRectX1 = width * 520/600;
  apiRectY1 = height * 700/700;
  
  apiX2 = width * 1/16;
  apiY2 = height * 600/700 ;
  apiRectX2 = width * 160/600;
  apiRectY2 = height * 700/700;
  
  apiX3 = width * 1/16;
  apiY3 = height * 600/700 ;
  apiRectX3 = width * 300/600;
  apiRectY3 = height * 700/700;
  
  weatherX= width * 1/16;
  weatherY= height * 1/3;
  weatherApiX= width * 1/16;
  weatherApiY= height * 1/3;
  
  noLoop();
}
 
void drawWeather(){
  setGradient(0, 0, 800, height, b2, b1, X_AXIS);
  
   fill(white);
   rect(titleX, titleY, titleRectX, titleRectY, 4);
   
   
   rect(quitX, quitY, quitRectX, quitRectY, 4);
   rect(CurrentX, CurrentY, CurrentApiX, CurrentApiY, 4);
   
   rect(apiX1, apiY1, apiRectX1, apiRectY1);
   //rect(apiX2, apiY2, apiRectX2, apiRectY2);
   //rect(apiX3, apiY3, apiRectX3, apiRectY3);
   
   rect(weatherX, weatherY, weatherApiX, weatherApiY);

}

void setGradient(int x, int y, float w, float h, color b1, color b2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
   else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
