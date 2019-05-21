//import 'package:flutter/material.dart';
//import 'package:mathsy/question_generator.dart';
//
//class QuestionWidget extends StatefulWidget {
//  @override
//  _QuestionWidgetState createState() => _QuestionWidgetState();
//}
//
//class _QuestionWidgetState extends State<QuestionWidget> {
//  Question question;
//
//  @override
//  void initState() {
//    question = QuestionsGenerator.generateQuestion();
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: EdgeInsets.only(top: 40.0),
//      child: Text(
//        "${question.phrase}",
//        style: TextStyle(
//            fontWeight: FontWeight.bold,
//            fontFamily: 'Raleway',
//            fontSize: 50),
//      ),
//    );
//  }
//}
//
//class QuestionsPage extends StatefulWidget {
//  @override
//  _QuestionsPageState createState() => _QuestionsPageState();
//}
//
//class _QuestionsPageState extends State<QuestionsPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Column(
//          children: <Widget>[
//            QuestionWidget(),
//            Container(
//              width: 200,
//              padding: EdgeInsets.only(top: 30),
//              child: TextField(
//                decoration: InputDecoration(
//                    hintText: 'Answer Here'
//                ),
//                keyboardType: TextInputType.number,
//                style: TextStyle(fontSize: 30),
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.only(top: 30),
//              child: Container(
//                width: 200.0,
//                height: 52.0,
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(30.0),
//                  gradient: LinearGradient(
//                    begin: Alignment.topLeft,
//                    end: Alignment.bottomRight,
//                    colors: <Color>[
//                      Color(0xFFFF8F00),
//                      Color(0xFFFFAF00),
//                      Color(0xFFFFC107),
//                    ],
//                  ),
//                ),
//                child: FlatButton(
//                  onPressed: () {
//                    print(context.ancestorStateOfType(TypeMatcher<QuestionsPage>()));
//                  },
//                  child: Text(
//                    'SUBMIT',
//                    style: TextStyle(
//                      fontWeight: FontWeight.bold,
//                      fontFamily: 'Raleway',
//                    ),
//                  ),
//                  textColor: Colors.white,
//                  shape: new RoundedRectangleBorder(
//                      borderRadius: new BorderRadius.circular(30.0)),
//                ),
//              ),
//            ),
//
//          ],
//        ),
//      ),
//    );
//  }
//}
import 'package:flutter/material.dart';
import 'package:mathsy/question_generator.dart';

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
