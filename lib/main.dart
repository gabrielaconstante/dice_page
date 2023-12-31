import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dados'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  int genRandomNumber() {
    return Random().nextInt(6) + 1;
  }

  void roolDice() {
    setState(() {
      leftDiceNumber = genRandomNumber();
      rightDiceNumber = genRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: roolDice,
                style:
                    TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                )),
          ),
          Expanded(
            child: TextButton(
                onPressed: roolDice,
                style:
                    TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                )),
          ),
        ],
      ),
    );
  }
}
