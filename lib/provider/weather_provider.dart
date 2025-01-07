import 'package:api_test/model/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WeatherProvider extends ChangeNotifier {
  final List<WeatherModel> _weatherList = [];

  List<WeatherModel> get weatherList => _weatherList;

  Future<void> setWeather() async {
    String path =
        'https://api.tomorrow.io/v4/weather/forecast?location=42.3478,-71.0466&apikey=9IZyDNUvxHX1yJH0TkyYFgm1mXO0MxcB';

    try {
      final dio = Dio();
      final response = await dio.get(path);

      _weatherList.clear();

      for (var e in response.data) {
        _weatherList.add(WeatherModel.fromJson(e));
      }

      notifyListeners();
    } catch (e) {
      debugPrint("Error fetching weather data: $e");
    }
  }

  void defaultWeather() {
    _weatherList.clear();
    notifyListeners();
  }
}
