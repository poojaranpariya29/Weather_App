import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/WeatherModel.dart';

class ApiHelper {
  Future<WeatherModel?> getWeatherData(String Search) async {
    var response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$Search&appid=1177b1e3edcc54bc767e02d9b9806249"));
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      return WeatherModel.fromJson(json);
    } else {
      return null;
    }
  }
}
