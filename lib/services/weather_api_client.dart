// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=c7002d43685568d0d01ceb112c425ffb&units=metric");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);

    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
