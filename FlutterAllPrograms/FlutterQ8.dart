import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicTacToeScreen(),
    );
  }
}

class TicTacToeScreen extends StatefulWidget {
  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  List<List<String>> board = List.generate(3, (_) => List.filled(3, ''));

  bool player1Turn = true;
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildScoreBoard(),
          buildGameBoard(),
          buildResetButton(),
        ],
      ),
    );
  }

  Widget buildScoreBoard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Player 1: $player1Score'),
        SizedBox(width: 20),
        Text('Player 2: $player2Score'),
      ],
    );
  }

  Widget buildGameBoard() {
    return Column(
      children: List.generate(3, (row) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (col) {
            return GestureDetector(
              onTap: () {
                if (board[row][col].isEmpty) {
                  setState(() {
                    board[row][col] = player1Turn ? 'X' : 'O';
                    checkWinner();
                    player1Turn = !player1Turn;
                  });
                }
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    board[row][col],
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            );
          }),
        );
      }),
    );
  }

  Widget buildResetButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          resetGame();
        });
      },
      child: Text('Reset Game'),
    );
  }

  void checkWinner() {
    // Check rows
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0].isNotEmpty) {
        showWinnerDialog(board[i][0]);
        return;
      }
    }

    // Check columns
    for (int i = 0; i < 3; i++) {
      if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i].isNotEmpty) {
        showWinnerDialog(board[0][i]);
        return;
      }
    }

    // Check diagonals
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0].isNotEmpty) {
      showWinnerDialog(board[0][0]);
      return;
    }

    if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2].isNotEmpty) {
      showWinnerDialog(board[0][2]);
      return;
    }

    // Check for a draw
    if (!board.any((row) => row.any((cell) => cell.isEmpty))) {
      showDrawDialog();
    }
  }

  void showWinnerDialog(String winner) {
    String message = winner == 'X' ? 'Player 1 wins!' : 'Player 2 wins!';
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Game Over'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              resetGame();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
    if (winner == 'X') {
      player1Score++;
    } else {
      player2Score++;
    }
  }

  void showDrawDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Game Over'),
        content: Text('It\'s a draw!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              resetGame();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void resetGame() {
    setState(() {
      board = List.generate(3, (_) => List.filled(3, ''));
      player1Turn = true;
    });
  }
}
