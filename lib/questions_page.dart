import 'package:flutter/material.dart';
import 'package:mathsy/question_generator.dart';
import 'package:mathsy/score_page.dart';
import 'dart:async';

class QuestionsPage extends StatefulWidget {
  final String questionDifficulty;

  QuestionsPage({Key key, @required this.questionDifficulty}) : super(key: key);

  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  int questionCounter = 0;

  generateNewQuestion() {
    if (questionCounter == 9) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ScorePage(
                  score: userScore,
                )),
      );
      return;
    }

    setState(() {
      formController.clear();
      questionCounter++;
      question = QuestionsGenerator.generateQuestion();
      questionTimer();
    });
  }

  int userScore = 0;

  checkUserAnswer(String text) {
    if (formController.text.isEmpty) {
      userScore = userScore;
    } else if (int.parse(formController.text) == question.questionAnswer) {
      userScore++;
    } else if (int.parse(formController.text) != question.questionAnswer) {
      userScore = userScore;
    }

    generateNewQuestion();
  }

  questionTimer() {
    if (QuestionsPage.questionDifficulty == "easy") {
      print("EASY WAS CHOSEN");
    } else if (QuestionsPage.questionDifficulty == "medium") {
      print("MEDIUM WAS CHOSEN");
      Timer(Duration(seconds: 5), () {
        print("Yeah, this line is printed after 5 second");
        generateNewQuestion();
      });
    } else if (QuestionsPage.questionDifficulty == "hard") {
      print("HARD WAS CHOSEN");
      Timer(Duration(seconds: 3), () {
        print("Yeah, this line is printed after 10 second");
        generateNewQuestion();
      });
    }
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
    questionTimer();
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
                  fontSize: 80,
                  fontFamily: 'Lato',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 220,
              padding: EdgeInsets.only(top: 50),
              child: TextField(
                controller: formController,
                onSubmitted: checkUserAnswer,
                decoration: InputDecoration(hintText: 'Answer Here'),
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 30, fontFamily: "ONEDAY"),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
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
                    checkUserAnswer("");
                  },
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      fontSize: 25,
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
