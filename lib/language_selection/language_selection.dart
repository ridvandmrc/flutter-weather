import 'package:flutter/material.dart';
import 'package:flutter_language/language_selection/country.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return languageList(countryList, context);
  }
}

Widget languageList(List<Country> languageList, BuildContext context) {
  return Column(
      children: languageList
          .map((element) => languageCard(element, context))
          .toList());
}

Widget languageCard(Country _country, BuildContext context) {
  return Card(
      elevation: 1,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, '/weather', arguments: {
          'country': _country.language,
          'lat': _country.lat,
          'long': _country.long,
          'flag': _country.flag
        }),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            spacing: 30,
            children: [
              Image.asset(
                'assets/flags/${_country.flag}.png',
                width: 30,
              ),
              Text(_country.language)
            ],
          ),
        ),
      ));
}
