import 'package:flutter/material.dart';

class WindWidget extends StatelessWidget {
  const WindWidget({super.key, required this.wind});

  final double wind;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/icons/wind.png',
                height: 40,
              ),
              Text(
                '$wind',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/icons/humidity.png',
                height: 40,
              ),
              Text(
                '$wind',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
