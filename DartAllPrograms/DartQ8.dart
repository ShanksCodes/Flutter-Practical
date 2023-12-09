import 'dart:io';

void main() {
  // Take input from the user
  print("Enter a list of numbers separated by spaces:");
  String input = stdin.readLineSync() ?? "";
  
  // Split the input string into a list of strings
  List<String> numbers = input.split(" ");

  // Reverse each number in the list and then reverse the entire list
  List<String> reversedNumbers = reverseList(numbers);

  // Print the reversed list
  print("Reversed Numbers: ${reversedNumbers.join(' ')}");
}

// Function to reverse each number in the list and then reverse the entire list
List<String> reverseList(List<String> numbers) {
  List<String> reversedNumbers = [];
  
  for (String number in numbers) {
    List<String> digits = number.split('');
    digits = digits.reversed.toList();
    reversedNumbers.add(digits.join(''));
  }
  
  return reversedNumbers.reversed.toList();
}
