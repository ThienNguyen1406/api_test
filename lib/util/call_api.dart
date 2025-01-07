import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:api_test/provider/weather_provider.dart';

class CallApi {
  void showValue(BuildContext context) {
    context.read<WeatherProvider>().setWeather();
  }

  static void hideValue(BuildContext context) {
    context.read<WeatherProvider>().defaultWeather();
  }
}
