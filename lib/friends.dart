import 'package:flutter/material.dart';

add_friend(image, name, job) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/$image.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '$job',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Icon(Icons.close),
          ),
        ],
      ),
      Divider(),
    ],
  );
}
