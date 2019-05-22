import 'package:flutter/material.dart';
import 'difficulty_page.dart';

class ScorePage extends StatelessWidget {
  final int score;
  ScorePage({Key key, @required this.score}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            Image(image: AssetImage("graphics/fireworks.gif"),
            alignment: Alignment.center,
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Text(
                    "WELL DONE!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontFamily: 'Raleway',
                      color: Colors.teal[200],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "YOU SCORED $score",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Center(
                    child: Container(
                      width: 220.0,
                      height: 72.0,
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
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => DifficultyPage()),
                          ); // Navigate back to first route when tapped.
                        },
                        child: Text(
                          'REPLAY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway',
                          ),
                        ),
                        textColor: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
