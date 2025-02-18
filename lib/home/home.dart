import 'package:flutter/material.dart';
import 'package:flutter_language/language_selection/language_selection.dart';
import 'package:flutter_language/weather/weather.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => _home(),
        '/weather': (context) => WeatherWidget()
      },
    );
  }
}

Widget _home() {
  return Scaffold(
    appBar: AppBar(
      title: titleWidget(),
      backgroundColor: Colors.grey.shade300,
    ),
    body: LanguageSelection(),
  );
}

Widget titleWidget() {
  return Container(
    alignment: Alignment.center,
    child: Text('Select a Country'),
  );
}
