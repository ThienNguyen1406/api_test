import 'package:api_test/provider/weather_provider.dart';
import 'package:api_test/util/call_api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<WeatherProvider>().fetchWeather();
    });
      CallApi().showValue(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather List'),
      ),
      body: Consumer<WeatherProvider>(
        builder: (context, weatherProvider, child) {
          final weatherList = weatherProvider.listWeather;

          if (weatherList.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: weatherList.length,
            itemBuilder: (BuildContext context, int index) {
              final weather = weatherList[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text("Time: ${weather.time ?? 'N/A'}"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Temperature: ${weather.values?.temperature?.toStringAsFixed(1) ?? 'N/A'}°C",
                      ),
                      Text(
                        "Description: ${weather.values?.weatherCode ?? 'N/A'}",
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           CallApi.hideValue(context);
        },
        child: const Icon(Icons.clear),
      ),
    );
  }
}
