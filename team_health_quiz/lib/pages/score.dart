import 'package:flutter/material.dart';
import '../utils/healt_check_form.dart';
import '../utils/question.dart';
import './landing_page.dart';

class ScorePage extends StatelessWidget {

  final int score;
  final List<Question> questions;
  Question currentQuestion;

  ScorePage(this.score, this.questions);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.blueAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Your Score: ", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50.0),),
          new Text(questions[0].question + ": " + questions[0].GetPoint().toString()),
          new Text(questions[1].question + ": " + questions[1].GetPoint().toString()),
          new Text(questions[2].question + ": " + questions[2].GetPoint().toString()),
          new Text(questions[3].question + ": " + questions[3].GetPoint().toString()),
          new IconButton(
            icon: new Icon(Icons.arrow_right),
            color: Colors.white,
            iconSize: 50.0,
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new LandingPage()), (Route route) => route == null)
          )
        ],
      )
    );
  }
}