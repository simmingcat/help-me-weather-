color pink = 0;
float titleX, titleY, titleRectX, titleRectY;
float quitX, quitY, quitRectX, quitRectY;
float apiX1, apiY1, apiRectX1, apiRectY1;

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
  
  quitX = width * 38.9/600 ;
  quitY = height *21/800;
  quitRectX = width * 50/600 ;
  quitRectY = height *30/800;
  
  apiX1 = width * 300/600 ;
  apiY1 = height * 400/800 ;
  apiRectX1 = width * 600/600;
  apiRectY1 = height * 800/800;
  
  noLoop();
}
 
void drawWeather(){
  setGradient(0, 0, 800, height, b2, b1, X_AXIS);
  
  rect(apiX1, apiY1, apiRectX1, apiRectY1);
  
   fill(white);
   rect(titleX, titleY, titleRectX, titleRectY);
   
   rect(quitX, quitY, quitRectX, quitRectY);

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
