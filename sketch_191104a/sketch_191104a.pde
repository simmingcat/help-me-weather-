int screen = 0;
color blue = #DEFEFF;

void setup(){
size(600, 700);
//fullscreen();
BuildURL();
APICall();
UnwrapToVariable();
textSetup();
setWeather();

}

void draw(){
    KanazawaScreen(); 
   if ( mouseX>quitX && mouseX<quitX+quitRectX && mouseY>quitY && mouseY<quitY+quitRectY ) {
    fill(blue);
    rect(quitX, quitY, quitRectX, quitRectY);
    //textDraw(quit, titleFont, height, #2C08FF, CENTER, CENTER, quitX, quitY, quitRectX, quitRectY); //Quit Button
    
  } else {
    fill(white);
    rect(quitX, quitY, quitRectX, quitRectY);
    //textDraw(quit, titleFont, height, #2C08FF, CENTER, CENTER, quitX, quitY, quitRectX, quitRectY); //Quit Button
  }
/*  if ( mouseX>apiCallX1 && mouseX<apiCallX1+apiCallRectWidth1 && mouseY>apiCallY1 && mouseY<apiCallY1+apiCallRectHeight1 ) {
    fill(red);
    rect(apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1);
    textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1); //Edmonton
  } else {
    fill(white);
    rect(apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1);
    textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1); //Edmonton
  }
  if ( mouseX>apiCallX2 && mouseX<apiCallX2+apiCallRectWidth2 && mouseY>apiCallY2 && mouseY<apiCallY2+apiCallRectHeight2 ) {
    fill(red);
    rect(apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2);
    textDraw(nameCalg, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2); //Edmonton
  } else {
    fill(white);
    rect(apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2);
    textDraw(nameCalg, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2); //Edmonton
  }
  if ( mouseX>apiCallX3 && mouseX<apiCallX3+apiCallRectWidth3 && mouseY>apiCallY3 && mouseY<apiCallY3+apiCallRectHeight3 ) {
    fill(red);
    rect(apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3);
    textDraw(nameRD, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3); //Edmonton
  } else {
    fill(white);
    rect(apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3);
    textDraw(nameRD, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3); //Edmonton
  }
  */
  textDraw();   
  }

void mousePressed(){
APICall();
UnwrapToVariable();
 if ( mouseX>quitX && mouseX<quitX+quitRectX && mouseY>quitY && mouseY<quitY+quitRectY ) {
    exit();
  }
  
  /*
  if ( mouseX>apiCallX1 && mouseX<apiCallX1+apiCallRectWidth1 && mouseY>apiCallY1 && mouseY<apiCallY1+apiCallRectHeight1 ) {
    edmTemp = String.valueOf(tempEdmonton);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(edmTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Edmonton
    println(tempEdmonton, edmTemp);
  }
  //
  if (mouseX>apiCallX2 && mouseX<apiCallX2+apiCallRectWidth2 && mouseY>apiCallY2 && mouseY<apiCallY2+apiCallRectHeight2) {
    calgTemp = String.valueOf(tempCalgary);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(calgTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Calgary
    println(tempCalgary, calgTemp);
  }
  //
  if (mouseX>apiCallX3 && mouseX<apiCallX3+apiCallRectWidth3 && mouseY>apiCallY3 && mouseY<apiCallY3+apiCallRectHeight3) {
    rdTemp = String.valueOf(tempRedDeer);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(rdTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Calgary
    println(tempRedDeer, rdTemp);
  }
  */
}

void keyPressed(){
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      exit();
    }
  } else {
    exit();
  }
  
}
