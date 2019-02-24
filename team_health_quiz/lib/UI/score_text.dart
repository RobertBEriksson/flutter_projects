import 'package:flutter/material.dart';
import '../utils/question.dart';

class ScoreText extends StatelessWidget {
  final List<Question> _questions;

  ScoreText(this._questions);


Widget getTextWidgets(List<Question> questions)
  {
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < questions.length; i++){
        list.add(new Text(questions[i].question + ": ", 
            style: new TextStyle(
              color: Colors.indigo,
              fontSize: 20)));
    }
    return new Column(children: list);
  }
  
  Widget getIconWidgets(List<Question> questions, int sprint)
  {
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < questions.length; i++){
        IconData icon;
        if (questions[i].GetPoint() == 1)
        {
          icon = Icons.mood_bad;
        }
        else if (questions[i].GetPoint() == 1)
        {
          icon = Icons.mood_bad;
        }
        else
        {
          icon = Icons.more_horiz;
        }
        list.add(new Icon(icon, size: 25.0,));
    }
    return new Column(children: list);
  }
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new Padding(
        padding: new EdgeInsets.symmetric(
          vertical: 80.0,
          horizontal: 20.0),
        child: new Center(
          child: new Row(
          children: <Widget>[
              getTextWidgets(_questions),
              getIconWidgets(_questions, 1),
          ],
          ),
        )
      )
    );
  }
  
}