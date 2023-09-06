import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dados'),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice1.png')),
          ),
          Expanded(
            child: Image.asset('images/dice1.png'),
          ),
        ],
      ),
    );
  }
}
