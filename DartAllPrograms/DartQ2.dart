import 'dart:io';

bool checkNumberPair(int num1, int num2) {
  return num1 == 50 || num2 == 50 || num1 + num2 == 50;
}

void main() {
  print("Enter the first number: ");
  int number1 = int.parse(stdin.readLineSync() ?? '');

  print("Enter the second number: ");
  int number2 = int.parse(stdin.readLineSync() ?? '');

  bool result = checkNumberPair(number1, number2);

  if (result) {
    print("True: One of the numbers is 50 or their sum is 50.");
  } else {
    print("False: Neither of the numbers is 50, and their sum is not 50.");
  }
}
