class Country {
  String flag;
  String language;
  String lat;
  String long;

  Country(
      {required this.flag,
      required this.language,
      required this.lat,
      required this.long});
}

List<Country> countryList = [
  Country(flag: 'tr', language: 'Turkiye', lat: '39.93', long: '32.85'),
  Country(flag: 'fr', language: 'France', lat: '48.85', long: '2.35'),
  Country(flag: 'it', language: 'Italy', lat: '41.89', long: '12.48'),
  Country(flag: 'de', language: 'Germany', lat: '52.52', long: '13.40'),
  Country(flag: 'gre', language: 'Greece', lat: '37.98', long: '23.72'),
  Country(flag: 'swit', language: 'switzerland', lat: '46.80', long: '9.83'),
];
