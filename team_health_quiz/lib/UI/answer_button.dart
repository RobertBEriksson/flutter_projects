import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  Color color;
  String text;

  AnswerButton(this.color, this.text);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new Material(
          color: this.color,
          child: new InkWell(
              onTap: () => print(["Answered: " + this.text]),
              child: new Center(
                child: new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.blueGrey, width: 5.0),
                  ),
                  padding: new EdgeInsets.all(15.0),
                  child: new Text(this.text, style: 
                    new TextStyle(color: Colors.blueGrey, fontSize: 35.0))
                ),
              )
            ),
        )
     );
  }
}
