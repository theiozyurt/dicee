import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Doto',
            ),
          ),
          backgroundColor: Colors.grey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void diceChanged() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                diceChanged();
              },
              child: Image.asset(
                'images/dice$leftDice.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                diceChanged();
              },
              child: Image.asset(
                'images/dice$rightDice.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
