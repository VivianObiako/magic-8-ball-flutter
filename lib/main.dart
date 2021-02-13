import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EightBall(),
      ),
    );

class EightBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: BallPicture(),
    );
  }
}

class BallPicture extends StatefulWidget {
  @override
  _BallPictureState createState() => _BallPictureState();
}

class _BallPictureState extends State<BallPicture> {
  int ballNumber = Random().nextInt(4) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
