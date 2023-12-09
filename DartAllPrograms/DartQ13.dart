import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync() ?? '');

  String binaryEquivalent = decimalToBinary(number);

  print("Binary Equivalent: $binaryEquivalent");
}

String decimalToBinary(int number) {
  if (number == 0) {
    return "0";
  }

  String binary = "";
  while (number > 0) {
    int remainder = number % 2;
    binary = "$remainder$binary";
    number ~/= 2;
  }

  return binary;
}
