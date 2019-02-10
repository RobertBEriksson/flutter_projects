import 'package:flutter/material.dart';

import '../utils/healt_check_form.dart';
import '../utils/question.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/answer_overlay.dart';
import 'score.dart';

class FormPage extends StatefulWidget {
  @override
  State createState() => new FormPageState();
}

class FormPageState extends State<FormPage> {

  Question currentQuestion;
  HealthCheckForm form = new HealthCheckForm([
    new Question("Support"),
    new Question("Teamwork"),
    new Question("Pawns or Players"),
    new Question("Mission"),
    new Question("Quality"),
    new Question("Suitable process"),
    new Question("Delivering value"),
    new Question("Learning"),
    new Question("Speed"),
    new Question("Easy to release"),
    new Question("Fun"),
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayShouldBeVisible = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = form.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = form.questionNumber;
  }

  void handleAnswer(int points) {
    isCorrect = true;
    currentQuestion.SetPoint(points);

  this.setState(() {
      overlayShouldBeVisible = true;
    });
    print(["Hejsan handle aswer: " + currentQuestion.question + " points: " + points.toString()]);
  }

  @override
  Widget build(BuildContext contrext) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column( // THis is the main page
          children: <Widget>[
            new QuestionText(questionText, questionNumber),
            new AnswerButton(1, true, () => handleAnswer(1)), //true button
            new AnswerButton(2, false, () => handleAnswer(2)), // false button
            new AnswerButton(3, true, () => handleAnswer(3)), //true button
          ],
        ),
        overlayShouldBeVisible == true ? new AnswerOverlay(
          () {
            if (form.length == questionNumber) {
              Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ScorePage(10, form.getQuestions)), (Route route) => route == null);
              return;
            }
            currentQuestion = form.nextQuestion;
            this.setState(() {
              overlayShouldBeVisible = false;
              questionText = currentQuestion.question;
              questionNumber = form.questionNumber;
            });
          }
        ) : new Container()
      ],
    );
  }
}