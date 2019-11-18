import java.util.Date; //Date Conversation, UNIX Time Stamp from Jan 1, 1970

//Global Variables
String mainWeatherKanazawa, descriptionKanazawa, iconKanazawa, countryKanazawa, nameKanazawa;
float tempKanazawa, tempMinKanazawa, tempMaxKanazawa;
int sunriseKanazawa, sunsetKanazawa;
Date apiCurrentDateCall;

String mainWeatherKyoto, descriptionKyoto, iconKyoto, countryKyoto, nameKyoto;
float tempKyoto, tempMinKyoto, tempMaxKyoto;
int apiCallTimeKyoto, sunriseKyoto, sunsetKyoto;

String mainWeatherGeorgeTown, descriptionGeorgeTown, iconGeorgeTown, countryGeorgeTown, nameGeorgeTown;
float tempGeorgeTown, tempMinGeorgeTown, tempMaxGeorgeTown;
int apiCallTimeGeorgeTown, sunriseGeorgeTown, sunsetGeorgeTown;

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}


void UnwrapToVariable(){
  currentKanazawa();
  currentKyoto();
  currentGeorgeTown();

}

void currentKanazawa() {
  //JSONArray weatherKanazawa = JsonCurrentKanazawa.getJSONArray("weather"); //Unwrapping

  //JSONObject allKanazawa = weatherKanazawa.getJSONObject(0); //Unwrap {}
 //mainWeatherKanazawa = allKanazawa.getString("main");
  //descriptionKanazawa= allKanazawa.getString("description");
  //iconKanazawa = allKanazawa.getString("icon");

  //JSONObject mainKanazawa = JsonCurrentKanazawa.getJSONObject("main"); //Unwrap {}
  //tempKanazawa = mainKanazawa.getFloat("temp");
  //tempMinKanazawa = mainKanazawa.getFloat("temp_min");
  //tempMaxKanazawa = mainKanazawa.getFloat("temp_max");

 // apiCallTimeKanazawa = JsonCurrentKanazawa.getInt("dt");

 //JSONObject sysKanazawa = JsonCurrentKanazawa.getJSONObject("sys"); //Unwrap {}
  //countryKanazawa = sysKanazawa.getString("country");
  //sunriseKanazawa = sysKanazawa.getInt("sunrise");
 // sunsetKanazawa = sysKanazawa.getInt("sunset");

  //nameKanazawa = JsonCurrentKanazawa.getString("name");
}

void currentKyoto() {
  JSONArray weatherKyoto = JsonCurrentKyoto.getJSONArray("weather"); //Unwrapping

  JSONObject allKyoto = weatherKyoto.getJSONObject(0); //Unwrap {}
  mainWeatherKyoto = allKyoto.getString("main");
  descriptionKyoto = allKyoto.getString("description");
  iconKyoto = allKyoto.getString("icon");

  JSONObject mainKyoto = JsonCurrentKyoto.getJSONObject("main"); //Unwrap {}
  tempKyoto = mainKyoto.getFloat("temp");
  tempMinKyoto = mainKyoto.getFloat("temp_min");
  tempMaxKyoto = mainKyoto.getFloat("temp_max");

  apiCallTimeKyoto = JsonCurrentKyoto.getInt("dt");

  JSONObject sysKyoto = JsonCurrentKyoto.getJSONObject("sys"); //Unwrap {}
  countryKyoto = sysKyoto.getString("country");
  sunriseKyoto = sysKyoto.getInt("sunrise");
  sunsetKyoto = sysKyoto.getInt("sunset");

  nameKyoto = JsonCurrentKyoto.getString("name");
}

void currentGeorgeTown() {
  JSONArray weatherGeorgeTown = JsonCurrentGeorgeTown.getJSONArray("weather"); //Unwrapping

  JSONObject allGeorgeTown = weatherGeorgeTown.getJSONObject(0); //Unwrap {}
  mainWeatherGeorgeTown = allGeorgeTown.getString("main");
  descriptionGeorgeTown = allGeorgeTown.getString("description");
  iconGeorgeTown = allGeorgeTown.getString("icon");

  JSONObject mainGeorgeTown = JsonCurrentGeorgeTown.getJSONObject("main"); //Unwrap {}
  tempGeorgeTown = mainGeorgeTown.getFloat("temp");
  tempMinGeorgeTown = mainGeorgeTown.getFloat("temp_min");
  tempMaxGeorgeTown = mainGeorgeTown.getFloat("temp_max");

  apiCallTimeGeorgeTown = JsonCurrentGeorgeTown.getInt("dt");

  JSONObject sysGeorgeTown = JsonCurrentGeorgeTown.getJSONObject("sys"); //Unwrap {}
  countryGeorgeTown = sysGeorgeTown.getString("country");
  sunriseGeorgeTown = sysGeorgeTown.getInt("sunrise");
  sunsetGeorgeTown = sysGeorgeTown.getInt("sunset");

  nameGeorgeTown = JsonCurrentGeorgeTown.getString("name");
}
