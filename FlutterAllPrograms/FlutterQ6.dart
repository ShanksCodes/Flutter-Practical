import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceGameApp());
}

class DiceGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceGameScreen(),
    );
  }
}

class DiceGameScreen extends StatefulWidget {
  @override
  _DiceGameScreenState createState() => _DiceGameScreenState();
}

class _DiceGameScreenState extends State<DiceGameScreen> {
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Player 1: $player1Score',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                rollDice(1);
              },
              child: Image.asset(
                'assets/dice.PNG',
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Player 2: $player2Score',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                rollDice(2);
              },
              child: Image.asset(
                'assets/dice.PNG',
                height: 150,
                width: 150,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                resetGame();
              },
              child: Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }

  void rollDice(int player) {
    setState(() {
      int diceValue = Random().nextInt(6) + 1;
      if (player == 1) {
        player1Score = diceValue;
      } else {
        player2Score = diceValue;
      }
      checkWinner();
    });
  }

  void checkWinner() {
    if (player1Score > 0 && player2Score > 0) {
      String winner = player1Score > player2Score ? 'Player 1' : 'Player 2';
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Winner'),
          content: Text('$winner wins!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void resetGame() {
    setState(() {
      player1Score = 0;
      player2Score = 0;
    });
  }
}
