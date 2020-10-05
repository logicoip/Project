import 'package:flutter/material.dart';

class MyService extends StatefulWidget {
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  Widget button() {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      alignment: Alignment.center,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Bright Brain'),
          onPressed: () {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
                center: Alignment(0, -1),
                colors: [
                  Colors.blue,
                  Colors.blue[300],
                ],
                radius: 1.5),
          ),
          child: ListView(
            children: [
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
