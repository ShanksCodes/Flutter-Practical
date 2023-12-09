import 'dart:io';

void main() {
  stdout.write("Enter the number of rows you want to print: ");
  int row = int.parse(stdin.readLineSync() ?? '');

  if (row % 2 == 0) {
    row++; // Ensure odd number of rows
  }

  int space = row - 1;

  for (int j = 1; j <= row; j++) {
    for (int i = 1; i <= space; i++) {
      stdout.write(" ");
    }
    space--;

    for (int i = 1; i <= 2 * j - 1; i++) {
      stdout.write("*");
    }

    stdout.write("\n");
  }

  space = 1;
  for (int j = 1; j <= row - 1; j++) {
    for (int i = 1; i <= space; i++) {
      stdout.write(" ");
    }
    space++;

    for (int i = 1; i <= 2 * (row - j) - 1; i++) {
      stdout.write("*");
    }

    stdout.write("\n");
  }
}
