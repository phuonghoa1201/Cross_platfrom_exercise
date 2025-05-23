import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('Magic 8 Ball'),
      ),
      body: Ball(),
    );
  }
}

// Tạo StatefulWidget
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;

  void updateBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1; // Random từ 1 đến 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: updateBall,
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}