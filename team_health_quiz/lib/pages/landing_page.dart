import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(color: Colors.greenAccent,
    child: new InkWell(
      onTap: () => print("We tapped something"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Hello World", style: new TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight:
            FontWeight.bold),),
          new Text("Tap to start Team Health Check")
        ],
      ),
    ) );
  }
}