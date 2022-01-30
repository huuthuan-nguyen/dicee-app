import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          "Dicee",
        ),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 1;

  void randomDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: randomDice,
              child: Image(
                image: AssetImage(
                  "images/dice$leftDiceNumber.png",
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: randomDice,
              child: Image(
                image: AssetImage(
                  "images/dice$rightDiceNumber.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
