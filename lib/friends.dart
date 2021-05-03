import 'package:flutter/material.dart';
import 'package:task3/theme/custom_theme.dart';

final friends = [
  ['a1', 'Corey George', 'Developer'],
  ['a2', 'Ahmad Vetrows', 'Developer'],
  ['a3', 'Cristofer Workman', 'Developer'],
  ['a4', 'Tiana Kosgaard', 'Developer'],
];

addFriend() {
  return Column(
    children: [
      for (var friend in friends)
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/${friend[0]}.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${friend[1]}',
                  style: CustomTheme.lightTheme.textTheme.subtitle1,
                ),
                Text(
                  '${friend[2]}',
                  style: CustomTheme.lightTheme.textTheme.bodyText2,
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
