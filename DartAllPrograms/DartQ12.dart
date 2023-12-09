import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync() ?? '');

  String words = numberToWords(number);

  print("In Words: $words");
}

String numberToWords(int number) {
  if (number == 0) {
    return "Zero";
  }

  List<String> units = [
    "",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen"
  ];

  List<String> tens = [
    "",
    "",
    "Twenty",
    "Thirty",
    "Forty",
    "Fifty",
    "Sixty",
    "Seventy",
    "Eighty",
    "Ninety"
  ];

  String result = "";

  if (number >= 100) {
    result += units[number ~/ 100] + " Hundred ";
    number %= 100;
  }

  if (number >= 20) {
    result += tens[number ~/ 10] + " ";
    number %= 10;
  }

  if (number > 0) {
    result += units[number];
  }

  return result.trim();
}
