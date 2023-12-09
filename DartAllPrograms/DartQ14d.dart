import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync() ?? '';
  input = input.toUpperCase();

  int length = input.length;
  int currentIndex = 0;

  for (int i = 1; currentIndex < length; i++) {
    for (int j = 0; j < i && currentIndex < length; j++) {
      stdout.write(input[currentIndex] + ' ');
      currentIndex++;
    }
    stdout.write('\n');
  }
}
