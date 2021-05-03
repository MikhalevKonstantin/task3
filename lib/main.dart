import 'package:flutter/material.dart';
import 'package:task3/friends.dart';
import 'package:task3/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final labels = ['Black', 'Bold', 'Medium', 'Regular', 'Light'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text('Profile', style: TextStyle(color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.more_vert_rounded, color: Colors.black),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CircleAvatar(
                  radius: 59,
                  backgroundImage: AssetImage('assets/images/Image.png'),
                ),
              ),
              Text(
                'Tiana Rosse',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Developer',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'Select Type',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
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
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'Friends',
              style: TextStyle(fontSize: 16),
            ),
          ),
          add_friend('a1', 'Corey George', 'Developer'),
          add_friend('a2', 'Ahmad Vetrows', 'Developer'),
          add_friend('a3', 'Cristofer Workman', 'Developer'),
          add_friend('a4', 'Tiana Kosgaard', 'Developer'),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text(
              'ADD FRIEND',
              style: TextStyle(fontSize: 14),
            ),
            icon: Icon(Icons.add),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'My media',
              style: TextStyle(fontSize: 24),
            ),
          ),
          add_images(),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'DELETE',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'ADD',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
