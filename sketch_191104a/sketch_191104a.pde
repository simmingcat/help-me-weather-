void setup(){
size(600, 800);
//fullscreen();
BuildURL();
APICall();
UnwrapToVariable();
setWeather();

}

void draw(){
  drawWeather();
  }

void mousePressed(){
APICall();
UnwrapToVariable();
}

void keyPressed(){

}
