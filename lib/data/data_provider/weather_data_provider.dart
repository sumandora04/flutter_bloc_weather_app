import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../secrets.dart';

class WeatherDataProvider {
  Future<String> getCurrentWeather(String cityName) async {
    try {
      String cityName = 'London';
      final res = await http.get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey',
        ),
      );

      return res.body;
    } catch (e) {
      throw e.toString();
    }
  }
}