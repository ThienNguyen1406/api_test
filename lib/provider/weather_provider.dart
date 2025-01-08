import 'package:api_test/model/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WeatherProvider extends ChangeNotifier {
  List<WeatherModel> listWeather=[];
  Future<void> fetchWeather() async {
    String path =
        'https://api.tomorrow.io/v4/weather/forecast?location=42.3478,-71.0466&apikey=9IZyDNUvxHX1yJH0TkyYFgm1mXO0MxcB';

    try {
      final response = await Dio().get(path);
      // final data = response.data['timelines']?['hourly'] ?? [];

      listWeather.clear();
      for (var item in response.data) {
        listWeather.add(WeatherModel.fromJson(item));
      }

      notifyListeners();
    } catch (e) {
      print("Error fetching weather: $e");
    }
  }

  void clearWeather() {
    listWeather.clear();
    notifyListeners();
  }
}
