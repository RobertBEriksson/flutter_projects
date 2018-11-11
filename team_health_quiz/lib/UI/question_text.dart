import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {

  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {

  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;

  @override
  void initState() {
    super.initState();
    _fontSizeAnimationController = new AnimationController(
      value: 0.1,
      duration: new Duration(seconds: 3),
      lowerBound: 0.0,
      upperBound: 1.0,
      vsync: this);
    _fontSizeAnimation = new CurvedAnimation(parent: _fontSizeAnimationController, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(() => this.setState(() {}));
    _fontSizeAnimationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 40.0),
        child: new Center(
          child: new Text("Statement " + widget._questionNumber.toString() + ": " + widget._question,
            style: new TextStyle(
              color: Colors.indigo,
              fontSize: _fontSizeAnimation.value * 20),
          ),
        )
      ),
    );
  }
}