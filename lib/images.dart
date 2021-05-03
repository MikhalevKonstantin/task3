import 'package:flutter/material.dart';

final images = [
  'Rectangle 6',
  'Rectangle 7',
  'Rectangle 8',
  'Rectangle 9',
  'Rectangle 10',
  'Rectangle 11',
  'Rectangle 12',
  'Rectangle 13',
  'Rectangle 14',
];

add_images() {
  return SizedBox(
    height: 400,
    child: GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        for (var image in images) Image.asset('assets/images/$image.png'),
      ],
    ),
  );
}
