import 'package:flutter/material.dart';
import 'package:mathsy/question_generator.dart';
import 'package:mathsy/score_page.dart';

import 'form.dart';

class QuestionsPage extends StatefulWidget {
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {

  int questionCounter = 0;
  generateNewQuestion() {

    if (questionCounter == 10){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScorePage(score: userScore,)),
      );
    }

    setState(() {
      formController.clear();
      questionCounter ++;
      question = QuestionsGenerator.generateQuestion();
    });
  }

  int userScore = 0;

  checkUserAnswer(String text) {
    print("User score before IF: $userScore \n");
    if (formController.text.isEmpty) {
      userScore = userScore;
      print("User score should have NOT been updated: $userScore");
    } else if (int.parse(formController.text) == question.questionAnswer) {
      userScore++;
      print("User score should have been updated to: $userScore");
    } else if (int.parse(formController.text) != question.questionAnswer) {
      userScore = userScore;
      print("User score should have NOT been updated: $userScore");
    }

    generateNewQuestion();
  }

  final formController = TextEditingController();

  @override
  void dispose() {
    formController.dispose();
    super.dispose();
  }

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
                controller: formController,
                onSubmitted: checkUserAnswer,
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
                    checkUserAnswer("");
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
