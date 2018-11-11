import 'package:flutter/material.dart';

import '../utils/form.dart';
import '../utils/question.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';

class FormPage extends StatefulWidget {
  @override
  State createState() => new FormPageState();
}

class FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext contrext) {
    return new Stack(
      children: <Widget>[
        new Column( // THis is the main page
          children: <Widget>[
            new QuestionText("It is easy to release", 5),
            new AnswerButton(Colors.redAccent, 'Sad face'),
            new AnswerButton(Colors.yellowAccent, 'Ok face'),
            new AnswerButton(Colors.lightGreenAccent, 'Happy face'),
          ],
        )
      ],
    );
  }
}