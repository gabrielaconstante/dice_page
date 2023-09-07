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
  var leftDiceNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  leftDiceNumber = 5;
                  print('Valor do dado: $leftDiceNumber');
                },
                style:
                    TextButton.styleFrom(padding: const EdgeInsets.all(16.0)),
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                )),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
}
