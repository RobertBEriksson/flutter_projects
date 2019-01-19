import 'package:flutter/material.dart';
import './form_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(color: Colors.greenAccent,
    child: new InkWell(
      onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new FormPage())),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Team Health", style: new TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight:
            FontWeight.bold),),
          new Text("Tap to start Team Health Check")
        ]
      ),
    ) );
  }
}