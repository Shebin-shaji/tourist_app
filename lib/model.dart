import 'package:tourist_app/countryList.dart';


class Country {
  String name;
  String img;

  Country({required this.name, required this.img});
}

List<Country> countries =
    countryLst.map((e) => Country(name: e['name'], img: e['img'])).toList();
