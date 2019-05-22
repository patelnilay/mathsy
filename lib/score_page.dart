import 'package:flutter/material.dart';
import 'difficulty_page.dart';

class ScorePage extends StatelessWidget {
  final int score;
  ScorePage({Key key, @required this.score}) : super(key: key);

  String message;
  String scoreMessage(){
    if (score < 5){
      message="Aw, Good Effort!";
    } else if ((score >= 5) && (score < 8)){
      message = "Great Job, you were close!";
    } else if ((score >= 8) && (score < 10)){
      message = "So Close!!";
    } else if (score == 10){
      message = "Spot On";
    }

    return message;
  }

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
                    scoreMessage(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontFamily: 'Raleway',
                      color: Colors.red[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "YOU SCORED $score",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Lato',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130.0),
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
                            fontSize: 30,
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
