import 'dart:io';

void main() {
  stdout.write("Enter the number of rows:");
  int rows = int.parse(stdin.readLineSync() ?? '');

  for (int i = 0; i < rows; i++) {
    for (int space = 1; space < rows - i; ++space) {
      stdout.write("  ");
    }

    int coef = 1;
    for (int j = 0; j <= i; j++) {
      if (j == 0 || i == 0) {
        coef = 1;
      } else {
        coef = coef * (i - j + 1) ~/ j; 
      }

      stdout.write("${coef.toString().padLeft(4)}");
    }

    stdout.write("\n");
  }
}
