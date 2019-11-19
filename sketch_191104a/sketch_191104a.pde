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
  drawWeather();
  textDraw();
  }

void mousePressed(){
APICall();
UnwrapToVariable();
}

void keyPressed(){

}
