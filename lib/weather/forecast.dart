import 'package:flutter/material.dart';

class ForcastModel {
  final String day;
  final double degree;
  ForcastModel({required this.day, required this.degree});
}

List<ForcastModel> forcasts = [
  ForcastModel(day: 'Today', degree: 13),
  ForcastModel(day: 'Mon', degree: 15),
  ForcastModel(day: 'Tue', degree: 8),
  ForcastModel(day: 'Wed', degree: 7),
  ForcastModel(day: 'Thrs', degree: -1),
  ForcastModel(day: 'Fri', degree: 2),
  ForcastModel(day: 'Sat', degree: 1)
];

class ForcastWidget extends StatelessWidget {
  const ForcastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: forcasts.map((element) => forcastLayout(element)).toList());
  }
}

Widget forcastLayout(ForcastModel forcast) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    spacing: 5,
    children: [
      Text(forcast.day,
          style: TextStyle(
              fontSize: 14,
              color: Colors.amber.shade100,
              fontWeight: FontWeight.w500)),
      Image.asset(
        getIcon(forcast.degree),
        height: 30,
        width: 30,
      ),
      Text(
        '${forcast.degree} °C',
        style: TextStyle(
            fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
      )
    ],
  );
}

String getIcon(double degree) {
  if (degree < 5) return 'assets/icons/cloudy-snow.webp';
  if (degree < 10) return 'assets/icons/rain-cloudy.webp';
  return 'assets/icons/partly-cloudy.png';
}
