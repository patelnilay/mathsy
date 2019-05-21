import 'dart:math';

class Question{
  int firstNumber;
  int secondNumber;
  int questionAnswer;
  String operator;
  String phrase;
}

class QuestionsGenerator{
  static Question _generateAdditionQuestion() {
    Random random = Random();
    Question question = Question();
    question.firstNumber = random.nextInt(13);
    question.secondNumber = random.nextInt(question.firstNumber+1);
    question.questionAnswer = (question.firstNumber + question.secondNumber);
    question.operator = '+';
    question.phrase = "${question.firstNumber} ${question.operator} ${question.secondNumber}  ";

    return question;
  }

  static Question _generateSubtractionQuestion(){
    Random random = Random();
    Question question = Question();
    question.firstNumber = random.nextInt(13);
    question.secondNumber = random.nextInt(question.firstNumber+1);
    question.questionAnswer = (question.firstNumber - question.secondNumber);
    question.operator = '-';
    question.phrase = "${question.firstNumber} ${question.operator} ${question.secondNumber} ";
    return question;
  }

  static Question _generateMultiplicationQuestion(){
    Random random = Random();
    Question question = Question();
    question.firstNumber = random.nextInt(13);
    question.secondNumber = random.nextInt(question.firstNumber+1);
    question.questionAnswer = (question.firstNumber * question.secondNumber);
    question.operator = 'x';
    question.phrase = "${question.firstNumber} ${question.operator} ${question.secondNumber} ";
    return question;
  }

  static Question _generateDivisionQuestion(){
    Random random = Random();
    Question question = Question();
    question.firstNumber = random.nextInt(12)+1;
    question.secondNumber = random.nextInt(question.firstNumber)+1;
    while ( question.firstNumber % question.secondNumber != 0){
      question.secondNumber = random.nextInt(question.firstNumber+1);
    }
    question.questionAnswer = (question.firstNumber ~/ question.secondNumber);
    question.operator = '÷';
    question.phrase = "${question.firstNumber} ${question.operator} ${question.secondNumber} ";
    return question;
  }

  static Question generateQuestion(){
    Random random = Random();
    List operationList = ['+', '-', 'x', '/'];
    int operationIndex = random.nextInt(operationList.length);
    if (operationList[operationIndex] == '+'){
      return _generateAdditionQuestion();
    }
    else if (operationList[operationIndex] == '-'){
      return _generateSubtractionQuestion();
    }
    else if (operationList[operationIndex] == 'x'){
      return _generateMultiplicationQuestion();
    }
    else{
     return _generateDivisionQuestion();
    }
  }
}
