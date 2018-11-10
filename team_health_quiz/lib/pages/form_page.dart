import 'package:flutter/material.dart';

import '../utils/form.dart';
import '../utils/question.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';

class FormPage extends StatefulWidget {
  @override
  State createState() => FormPageState();
}

class FormPageState extends State<FormPage> {
  @override
    Widget build(BuildContext contrext) {
      return new Stack(
        children: <Widget>[
          new Column( // THis is the main page
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new QuestionText(),
              new AnswerButton(Colors.redAccent, 'Sad face'),
              new AnswerButton(Colors.yellowAccent, 'Ok face'),
              new AnswerButton(Colors.lightGreenAccent, 'Happy face'),
            ],
          )
        ],
      );
    }
}