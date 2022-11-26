import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(197, 255, 240, 79),
        appBar: AppBar(
          elevation: 4,
          title: const Text('Dicee'),
          backgroundColor: const Color.fromARGB(197, 255, 240, 79),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

// here written all code of dice app.
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
      // this is the function of maths package. and + 1 is for removing zero number.
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
