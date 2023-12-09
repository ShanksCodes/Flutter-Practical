import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync() ?? '');

  int numberOfFactors = countFactors(number);

  print("The number of factors of $number is $numberOfFactors.");
}

int countFactors(int number) {
  int count = 0;

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      count++;
    }
  }

  return count;
}
