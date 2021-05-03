import 'package:flutter/material.dart';

final labels = ['Black', 'Bold', 'Medium', 'Regular', 'Light'];
int choiceIndex;

addTypes() {
  return Container(
    height: 32,
    width: 60,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: labels.length,
      itemBuilder: (BuildContext context, int index) {
        return ChoiceChip(
          label: Text(
            labels[index],
          ),
          selected: choiceIndex == index,
          selectedColor: Colors.red,
          selectedShadowColor: Colors.green,
          onSelected: (bool selected) {
            choiceIndex = selected ? index : 0;
          },
          backgroundColor: Colors.black12,
          labelStyle: TextStyle(color: Colors.white),
        );
      },
    ),
  );

  // return Padding(
  //   padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
  //   child: Container(
  //     height: 30,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: [
  //         for (var label in labels)
  //           Chip(
  //             label: Text('$label'),
  //           ),
  //       ],
  //     ),
  //   ),
  // );
}
