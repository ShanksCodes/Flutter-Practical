import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync() ?? '');

  List<int> primeFactors = findPrimeFactors(number);

  if (primeFactors.isEmpty) {
    print("The number $number has no prime factors.");
  } else {
    print("Prime factors of $number are: $primeFactors");
  }
}

List<int> findPrimeFactors(int number) {
  List<int> primeFactors = [];
  int divisor = 2;

  while (number > 1) {
    while (number % divisor == 0) {
      primeFactors.add(divisor);
      number = number ~/ divisor;
    }
    divisor++;
  }

  return primeFactors;
}
