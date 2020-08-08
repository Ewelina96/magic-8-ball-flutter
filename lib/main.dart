import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

void main() => runApp(
      BallPage(),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BallPage',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text('Ask me anything'),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void changeNumber() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                child: Image.asset('images/ball$ballNumber.png'),
                onPressed: () {
                  changeNumber();
                }),
          ),
        ],
      ),
    );
  }
}
