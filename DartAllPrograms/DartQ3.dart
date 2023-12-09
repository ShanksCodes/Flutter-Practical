import 'dart:io';

int calculateSumOfDigits(int number) {
  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10; //performs int division
  }
  return sum;
}

void main() {
  print("Enter an integer: ");
  int num = int.parse(stdin.readLineSync() ?? '');

  int sum = calculateSumOfDigits(num);

  print("Sum of the digits of $num is $sum.");
}
