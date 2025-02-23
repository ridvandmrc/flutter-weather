import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_language/language_selection/country.dart';
import 'package:flutter_language/weather/forecast.dart';
import 'package:flutter_language/weather/temp.dart';
import 'package:flutter_language/weather/weather_data.dart';
import 'package:flutter_language/weather/wind.dart';
import 'package:http/http.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<StatefulWidget> createState() => _WeatherWidget();
}

class _WeatherWidget extends State<StatefulWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final _data = ModalRoute.of(context)!.settings.arguments as Map;
    getData(Country(
        flag: _data['flag'],
        language: _data['country'],
        lat: _data['lat'],
        long: _data['long']));
  }

  Weather weather = Weather(country: 'Loading', degree: 0, body: 0, wind: 0);
  String country = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            color: Colors.grey.shade800,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  weatherTitle(weather.country),
                  TempWidget(degree: weather.degree),
                  WindWidget(wind: weather.wind),
                  ForcastWidget(),
                ])));
  }

  getData(Country cntry) async {
    Response data = await get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=${cntry.lat}&longitude=${cntry.long}&current=temperature_2m,wind_speed_10m'));

    final body = json.decode(data.body);
    final current = body['current'];

    setState(() {
      weather = Weather(
          country: cntry.language,
          degree: current['temperature_2m'],
          body: current['temperature_2m'],
          wind: current['wind_speed_10m']);
    });
  }
}

Widget weatherTitle(String country) {
  return Text(
    'Weather, ${country}',
    style: TextStyle(
        fontSize: 20, color: Colors.grey.shade100, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}
