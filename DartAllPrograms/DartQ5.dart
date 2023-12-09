import 'dart:io';

List<int> findFactors(int number) {
  List<int> factors = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      factors.add(i);
    }
  }

  return factors;
}

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync() ?? '');

  List<int> factors = findFactors(number);

  print("Factors of $number are:");
  for (int factor in factors) {
    print(factor);
  }
}
