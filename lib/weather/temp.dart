import 'package:flutter/material.dart';

class TempWidget extends StatelessWidget {
  const TempWidget({super.key, required this.degree});

  final dynamic degree;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.fromLTRB(0, 80, 0, 30),
        child: Image.asset(
          'assets/icons/partly-cloudy.png',
          width: 400,
          height: 250,
        ),
      ),
      Text(
        '$degree °C',
        style: TextStyle(fontSize: 40, color: Colors.grey.shade300),
        textAlign: TextAlign.center,
      ),
      Text(
        'Partially cloudy',
        style: TextStyle(
            fontSize: 16,
            color: Colors.blue.shade300,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )
    ]);
  }
}
