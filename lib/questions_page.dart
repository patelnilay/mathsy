import 'package:flutter/material.dart';
import 'package:mathsy/question_generator.dart';

import 'form.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  Question question;

  @override
  void initState() {
    question = QuestionsGenerator.generateQuestion();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                "${question.phrase}",
                style: TextStyle(
//                  fontWeight: FontWeight.bold,
                  fontSize: 90,
                  fontFamily: 'Lobster-Two',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 220,
              padding: EdgeInsets.only(top: 60),
              child: TextField(
                decoration: InputDecoration(hintText: 'Answer Here'),
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                width: 200.0,
                height: 52.0,
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
                    setState(() {
                      question = QuestionsGenerator.generateQuestion();
                    });
                  },
                  child: Text(
                    'SUBMIT',
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
          ],
        ),
      ),
    );
  }
}
