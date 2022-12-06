import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class WeatherProvider with ChangeNotifier {
  String weather='';
  String? place='';
  double temp=0.0;
  double windspeed=0.0;

  String _data = '';
  get data => _data;

  double get takevalue {
    temp;
    place;
    weather;
    windspeed;
    return temp;
  }

  Future getWeather() async {
    final url =
        'https://api.openweathermap.org/data/2.5/weather?lat=10.258753&lon=75.780411&appid=b30de56fcbd933743d24fc9004670526&units=metric';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print(temp);
      print(weather = body['weather'][0]['main']);
      weather = body['weather'][0]['main'];
      place = body['name'];
      temp = body['main']['temp'];
      windspeed = body['wind']['speed'];
      notifyListeners();
    }
  }
}
