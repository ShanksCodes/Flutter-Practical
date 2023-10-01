import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(FirstFlutterApp());
}

class FirstFlutterApp extends StatefulWidget {
  @override
  _FirstFlutterAppState createState() => _FirstFlutterAppState();
}

class _FirstFlutterAppState extends State<FirstFlutterApp> {
  int incrementCount = 0;
  int decrementCount = 0;
  int squareCount = 0;
  int primeCount = 0;
  int evenOddCount = 0;
  int palindromeCount = 0;
  int factorialCount = 0;
  int userInput = 0;

  String resultText = '';

  bool isPrime(int number) {
    if (number <= 1) return false;
    if (number == 2) return true;
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  bool isEven(int number) {
    return number % 2 == 0;
  }

  bool isPalindrome(int number) {
    String numberStr = number.toString();
    String reversedNumberStr = numberStr.split('').reversed.join('');
    return numberStr == reversedNumberStr;
  }

  int calculateFactorial(int number) {
    if (number == 0 || number == 1) return 1;
    return number * calculateFactorial(number - 1);
  }

  int findSquare(int number){
    return number*number;
  }

  void updateResultText(String action, int value) {
    setState(() {
      resultText =
      "You have pushed the $action button this many times: $value\n";
    });
  }

  void onButtonPress(String action) {
    setState(() {
      switch (action) {
        case 'Increment':
          incrementCount++;
          userInput++;
          updateResultText('increment', incrementCount);
          resultText +='Incremented to $userInput\n';
          break;
        case 'Decrement':
          decrementCount++;
          userInput--;
          updateResultText('decrement', decrementCount);
          resultText +='Decremented to $userInput\n';
          break;
        case 'Square':
          squareCount++;
          updateResultText('square', squareCount);
          resultText +='Square of $userInput is ${findSquare(userInput)}\n';
          break;
        case 'Prime':
          primeCount++;
          updateResultText('prime', primeCount);
          resultText +=
          '$userInput is ${isPrime(userInput) ? 'prime' : 'not prime'}\n';
          break;
        case 'Even/Odd':
          evenOddCount++;
          updateResultText('even/odd', evenOddCount);
          resultText +=
          '$userInput is ${isEven(userInput) ? 'even' : 'odd'}\n';
          break;
        case 'Palindrome':
          palindromeCount++;
          updateResultText('palindrome', palindromeCount);
          resultText +=
          '$userInput is ${isPalindrome(userInput) ? 'palindrome' : 'not palindrome'}\n';
          break;
        case 'Factorial':
          factorialCount++;
          updateResultText('factorial', factorialCount);
          resultText +=
          'Factorial of $userInput is ${calculateFactorial(userInput)}\n';
          break;
        case 'Reset':
          incrementCount = 0;
          decrementCount = 0;
          squareCount = 0;
          primeCount = 0;
          evenOddCount = 0;
          palindromeCount = 0;
          factorialCount = 0;
          resultText = '';
          // Reset userInput to its original value
          userInput =0;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstFlutterApp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('FirstFlutterApp'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Enter a number:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Container(
                width: 200, // Set a specific width
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    userInput = int.tryParse(value) ?? 0;
                  },
                ),
              ),
              SizedBox(height: 20),
              Text(
                resultText,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton('Increment'),
                  buildButton('Decrement'),
                  buildButton('Square'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton('Prime'),
                  buildButton('Even/Odd'),
                  buildButton('Palindrome'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton('Factorial'),
                  SizedBox(width: 10),
                  buildButton('Reset'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String action) {
    return ElevatedButton(
      onPressed: () {
        onButtonPress(action);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      child: Text(action),
    );
  }
}
