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

addImages() {
  return SizedBox(
    height: 400,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 170,
          // childAspectRatio: 3 / 2,
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/${images[index]}.png'),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
          );
        },
      ),
    ),
  );
  // return SizedBox(
  //   height: 400,
  //   child: GridView.count(
  //     crossAxisCount: 3,
  //     children: <Widget>[
  //       for (var image in images) Image.asset('assets/images/$image.png'),
  //     ],
  //   ),
  // );
}
