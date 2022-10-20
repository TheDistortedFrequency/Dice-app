import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xff009E60),
        appBar: AppBar(
          elevation: 4,
          title: const Text('Dicee'),
          backgroundColor: const Color(0xff009E60),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;
  int num = 0;

  void dicechange() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Image.asset("images/dice$leftdice.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Image.asset("images/dice$rightdice.png"),
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            dicechange();
          },
          child: Text("Dice Roll $num"),
        )
      ],
    ));
  }
}
