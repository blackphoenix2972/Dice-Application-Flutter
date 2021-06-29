import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice Roller')),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {


  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceImageNumber = 1;
  int rightDiceImageNumber = 1;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDiceImageNumber = random.nextInt(6) + 1;
                    });
                    print(leftDiceImageNumber);
                  },
                  child: Image.asset('images/dice$leftDiceImageNumber.png'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceImageNumber = random.nextInt(6) + 1;
                    });
                    print(rightDiceImageNumber);
                  },
                  child: Image.asset('images/dice$rightDiceImageNumber.png')))
        ],
      ),
    );
  }
}
