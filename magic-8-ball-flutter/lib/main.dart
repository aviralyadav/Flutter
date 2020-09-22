import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Ask Me Anything'),
          ),
          body: MagicBall(),
        ),
      ),
    );

    class MagicBall extends StatefulWidget {
      @override
      _MagicBallState createState() => _MagicBallState();
    }
    
    class _MagicBallState extends State<MagicBall> {
      int ballNumber = 1;
      @override
      Widget build(BuildContext context) {
        return Center(
          child: Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
            }, 
            child: Image.asset('images/ball$ballNumber.png')),
            ),
        );
      }
    }
