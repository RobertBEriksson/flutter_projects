import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  Color color;
  String text;
  final bool _answer;
  final int _points;
  String _text;
  final VoidCallback _onTap;

  AnswerButton(this._points, this._answer, this._onTap);

  String DisplayText(int points)
  {
    switch (points)
    {
      case (3): {
        return "Good";
      }
      case (2): {
        return "OK";
      }
      case (1): {
        return "Bad";
      }
    }
    return "None";
  }
  
  Color GetColor(int points)
  {
    switch (points)
    {
      case (3): {
        return Colors.lightGreenAccent;
      }
      case (2): {
        return Colors.yellowAccent;
      }
      case (1): {
        return Colors.redAccent;
      }
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material(
        color: GetColor(_points),
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
            child: new Container(
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white, width: 5.0)
              ),
              padding: new EdgeInsets.all(20.0),
              child: new Text(DisplayText(_points),
                style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)
              ),
            )
          ),
        ),
      ),
    );
  }
}
