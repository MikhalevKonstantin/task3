import 'package:flutter/material.dart';

final labels = ['Black', 'Bold', 'Medium', 'Regular', 'Light'];

addTypes() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
    child: Container(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var label in labels)
            Chip(
              label: Text('$label'),
            ),
        ],
      ),
    ),
  );
}
