import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: Center(
        child: Image(image: NetworkImage('https://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png')),
      ),
      appBar: AppBar(
        title: Text('I am poor'),
        backgroundColor: Colors.blueGrey,
      ),
    ),
  ));
}
