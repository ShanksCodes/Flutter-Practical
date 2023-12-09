import 'dart:io';

void main() {
  // Take input from the user
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  // Convert the number into words
  String result = convertNumberToWords(number);

  // Print the result
  print("Output: $result");
}

String convertNumberToWords(int number) {
  List<String> words = [];

  // Convert each digit to words
  while (number > 0) {
    int digit = number % 10;
    words.add(getWordForDigit(digit));
    number ~/= 10;
  }

  // Reverse the list to get the correct order
  words = words.reversed.toList();

  // Join the words with space and return
  return words.join(' ');
}

String getWordForDigit(int digit) {
  switch (digit) {
    case 0:
      return 'Zero';
    case 1:
      return 'One';
    case 2:
      return 'Two';
    case 3:
      return 'Three';
    case 4:
      return 'Four';
    case 5:
      return 'Five';
    case 6:
      return 'Six';
    case 7:
      return 'Seven';
    case 8:
      return 'Eight';
    case 9:
      return 'Nine';
    default:
      return '';
  }
}
