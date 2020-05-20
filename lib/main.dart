import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent[200],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 6;
  void randomizer() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          randomizer();
        },
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset('images/dice$leftDice.png'),
            ),
            SizedBox(
              width: 32,
            ),
            Expanded(
              flex: 1,
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ],
        ),
      ),
    );
  }
}
