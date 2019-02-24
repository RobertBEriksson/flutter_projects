import 'package:flutter/material.dart';
import '../utils/question.dart';
import './landing_page.dart';
import '../UI/score_text.dart';
import '../UI/question_text.dart';

class ScorePage extends StatelessWidget {

  final int score;
  final List<Question> questions;
  Question currentQuestion;

  ScorePage(this.score, this.questions);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Material(
            color: Colors.white,
            child: new Padding(
              padding: new EdgeInsets.symmetric(
                vertical: 80.0),
              child: new Center(
                child: new Text("Statement ",
                  style: new TextStyle(
                    color: Colors.indigo,
                    fontSize: 30.0),
                ),
              )
            ),
          ),
          new ScoreText(questions),
          new IconButton(
            icon: new Icon(Icons.restore_page),
            color: Colors.white,
            iconSize: 50.0,
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(
                builder: (BuildContext context) => new LandingPage()
                ),
                (Route route) => route == null)
          )
        ],
      )
    );
  }
}