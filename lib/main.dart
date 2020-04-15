import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Ask Me Anything'),
              backgroundColor: Colors.black38,
            ),
            backgroundColor: Colors.deepPurple,
            body: My8BallApp()),
      ),
    );

class My8BallApp extends StatefulWidget {
  @override
  _My8BallAppState createState() => _My8BallAppState();
}

class _My8BallAppState extends State<My8BallApp> {
  int pic = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      pic = Random().nextInt(4) + 1;
                    });
                  },
                  child: Image.asset('images/image$pic.gif')))
        ],
      ),
    );
  }
}
