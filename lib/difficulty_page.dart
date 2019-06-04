import 'package:flutter/material.dart';
import 'package:mathsy/questions_page.dart';

import 'main.dart';

String pageDifficulty;

class DifficultyPage extends StatelessWidget {
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
                      pageDifficulty = "easy";
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionsPage(
                          questionDifficulty: pageDifficulty,
                        )),
                      );
                    },
                    child: Text(
                      "EASY",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
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
                      pageDifficulty = "medium";
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionsPage(
                          questionDifficulty: pageDifficulty,
                        )),
                      );
                    },
                    child: Text(
                      "MEDIUM",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
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
                      pageDifficulty = "hard";
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionsPage(
                          questionDifficulty: pageDifficulty,
                        )),
                      );
                    },
                    child: Text(
                      "HARD",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 220.0,
                  height: 72.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFC62828),
                        Color(0xFFD32F2F),
                        Color(0xFFE53935),
                      ],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => StartPage()),
                      ); // Navigate back to first route when tapped.
                    },
                    child: Text(
                      'BACK',
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
            ],
          ),
        ));
  }
}