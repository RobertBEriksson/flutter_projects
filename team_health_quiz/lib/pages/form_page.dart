import 'package:flutter/material.dart';

import '../utils/form.dart';
import '../utils/question.dart';

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
              new Expanded(
                child: new Material(
                  color: Colors.lightBlueAccent,
                  child: new InkWell(
                    onTap: () => print("Answered1"),
                    child: new Center(
                      child: new Container(
                        child: new Text("Sad"),
                      ),
                    )
                  ),
                )
              ),
              new Expanded(
                child: new Material(
                  color: Colors.red,
                  child: new InkWell(
                    onTap: () => print("Answered2"),
                    child: new Center(
                      child: new Container(
                        child: new Text("Ok"),
                      ),
                    )
                  ),
                )
              ),
                new Expanded(
                child: new Material(
                  color: Colors.lightGreenAccent,
                  child: new InkWell(
                    onTap: () => print("Answered3"),
                    child: new Center(
                      child: new Container(
                        child: new Text("Happy"),
                      ),
                    )
                  ),
                )
              )
            ],
          )
        ],
      );
    }
}