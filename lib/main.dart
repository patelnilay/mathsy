import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'difficulty_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Mathsy',
      theme: ThemeData(
        primaryColor: Colors.amber,
        accentColor: Colors.teal[600],
        fontFamily: 'Raleway',
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Mathsy",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFFFF8F00),
                      Color(0xFFFFAF00),
                      Color(0xFFFFC107),
                    ],
                  ),
                ),
                child: FlatButton(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 80.0, right: 80.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DifficultyPage()),
                    );
                  },
                  child: Text(
                    "START!",
                    style: TextStyle(fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
            ),
            Expanded(
              child: Image(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('graphics/start_page.png')),
            ),
          ],
        ),
      ),
    );
  }
}




