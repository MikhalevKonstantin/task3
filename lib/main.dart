import 'package:flutter/material.dart';
import 'package:task3/friends.dart';
import 'package:task3/images.dart';
import 'package:task3/theme/colors.dart';
import 'package:task3/types.dart';
import 'package:task3/theme/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me',
      theme: CustomTheme.lightTheme,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text('Profile', style: Theme.of(context).textTheme.headline6),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.more_vert_rounded, color: Colors.black),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          //me
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
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'Developer',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          Divider(),

          //types
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'Select Type',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          addTypes(),

          //friends
          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'Friends',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          addFriend(),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text(
              'ADD FRIEND',
              style: Theme.of(context).textTheme.button,
            ),
            icon: Icon(Icons.add),
          ),

          //media
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'My media',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          addImages(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text(
                    'DELETE',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text(
                    'ADD',
                    style: Theme.of(context).textTheme.button,
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
