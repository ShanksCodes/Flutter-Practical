import 'dart:io';

bool isDivisibleBy2(int number) {
  return number % 2 == 0;
}

bool isDivisibleBy3(int number) {
  return sumOfDigits(number) % 3 == 0;
}

bool isDivisibleBy4(int number) {
  final lastTwoDigits = number % 100;
  return lastTwoDigits % 4 == 0;
}

bool isDivisibleBy5(int number) {
  return number % 10 == 0 || number % 10 == 5;
}

bool isDivisibleBy6(int number) {
  return isDivisibleBy2(number) && isDivisibleBy3(number);
}

bool isDivisibleBy7(int number) {
  final remainingPart = (number ~/ 10);
  final difference = 2 * (number % 10) - remainingPart;
  return difference % 7 == 0;
}

bool isDivisibleBy8(int number) {
  final lastThreeDigits = number % 1000;
  return lastThreeDigits % 8 == 0;
}

bool isDivisibleBy9(int number) {
  return sumOfDigits(number) % 9 == 0;
}

bool isDivisibleBy10(int number) {
  return number % 10 == 0;
}

bool isDivisibleBy11(int number) {
  List<int> digits = [];
  while (number > 0) {
    digits.add(number % 10);
    number ~/= 10;
  }

  int sumOdd = 0;
  int sumEven = 0;
  
  for (int i = 0; i < digits.length; i++) {
    if (i % 2 == 0) {
      sumOdd += digits[i];
    } else {
      sumEven += digits[i];
    }
  }

  int difference = sumOdd - sumEven;

  return difference % 11 == 0;
}


int sumOfDigits(int number) {
  var sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  return sum;
}

void main() {
  print("Enter a positive number:");
  int N = int.parse(stdin.readLineSync() ?? '');

  print("Divisible by 2: ${isDivisibleBy2(N)}");
  print("Divisible by 3: ${isDivisibleBy3(N)}");
  print("Divisible by 4: ${isDivisibleBy4(N)}");
  print("Divisible by 5: ${isDivisibleBy5(N)}");
  print("Divisible by 6: ${isDivisibleBy6(N)}");
  print("Divisible by 7: ${isDivisibleBy7(N)}");
  print("Divisible by 8: ${isDivisibleBy8(N)}");
  print("Divisible by 9: ${isDivisibleBy9(N)}");
  print("Divisible by 10: ${isDivisibleBy10(N)}");
  print("Divisible by 11: ${isDivisibleBy11(N)}");
}
