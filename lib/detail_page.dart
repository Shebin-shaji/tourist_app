import 'package:flutter/material.dart';

import 'package:tourist_app/dummy_text.dart';
import 'package:tourist_app/model.dart';

class CountryDetails extends StatelessWidget {
  final Country country;

  const CountryDetails({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(country.img))),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Text(
            country.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            DummyText.text,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10),
          child: Text(
            'Place to Visit',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
            children: List.generate(
          3,
          (index) => Container(
            margin: const EdgeInsets.all(25),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://theimmigrationoffice.com/wp-content/uploads/2015/08/Canadian-cities.jpg.webp'))),
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            height: 40,
            minWidth: MediaQuery.of(context).size.width,
            color: Colors.deepPurple,
            child: const Text(
              'Press to Explore',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
