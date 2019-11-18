String baseURL_Current;
String baseURL_forecast;

String kanazawaID;
String KyotoID;
String GeorgeTownID;
String apiKey;

//other thingy
String mode;
String unitMetric;
String and;

//URL
String URLCurrentKanazawa;
String URLForecastKanazawa;

String URLCurrentKyoto;
String URLForecastKyoto;

String URLCurrentGeorgeTown;
String URLForecastGeorgeTown;

//Json
JSONObject JsonCurrentGeorgeTown;
JSONObject JsonForecastGeorgeTown;
  
JSONObject JsonCurrentKyoto;
JSONObject JsonForecastKyoto;

JSONObject JsonCurrentKanazawa;
JSONObject JsonForecastKanazawa;

void BuildURL(){
//base
baseURL_Current = "https://api.openweathermap.org/data/2.5/weather?";
baseURL_forecast = "https://api.openweathermap.org/data/2.5/forecast?";

//Id
kanazawaID = "id=1860244";
KyotoID = "id=1857910";
GeorgeTownID = "id=4292686";
apiKey = "APPID=f0e3754205b22438998c2103b0a0c898";//api key

//other thingy
mode = "mode=json";
unitMetric = "units=metric";
and = "&";
 
//URL
URLCurrentKanazawa = baseURL_Current + kanazawaID + and + apiKey + and + mode + and + unitMetric;
URLForecastKanazawa = baseURL_forecast + kanazawaID + and + apiKey + and + mode + unitMetric;

URLCurrentKyoto = baseURL_Current + KyotoID + and + apiKey + and + mode + and + unitMetric;
URLForecastKyoto = baseURL_forecast + KyotoID + and + apiKey + and + mode + unitMetric;

 URLCurrentGeorgeTown = baseURL_Current + GeorgeTownID + and + apiKey + and + mode + and + unitMetric;
URLForecastGeorgeTown = baseURL_forecast + GeorgeTownID + and + apiKey + and + mode + unitMetric;
}

void APICall(){
  
JsonCurrentKanazawa = loadJSONObject(URLCurrentKanazawa);
JsonForecastKanazawa = loadJSONObject(URLForecastKanazawa);
 
JsonCurrentKyoto = loadJSONObject(URLCurrentKyoto);
JsonForecastKyoto = loadJSONObject(URLForecastKyoto);
 
JsonCurrentGeorgeTown = loadJSONObject(URLCurrentGeorgeTown);
JsonForecastGeorgeTown = loadJSONObject(URLForecastGeorgeTown);


  
//println(URLCurrentKanazawa);
//println(URLForecastKanazawa);

//println(URLCurrentKyoto);
//println(URLForecastKyoto);

//println(URLCurrentGeorgeTown);
//println(URLForecastGeorgeTown);

}
