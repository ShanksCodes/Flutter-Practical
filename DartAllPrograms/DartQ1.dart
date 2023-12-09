import 'dart:io';

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9/5) + 32;
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5/9;
}

void main() {
  print("Choose conversion:");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");

  int choice = int.parse(stdin.readLineSync() ?? '');

  if (choice == 1) {
    print("Enter temperature in Celsius: ");
    double celsius = double.parse(stdin.readLineSync() ?? '');
    double fahrenheit = celsiusToFahrenheit(celsius);
    print("$celsius Celsius is equal to $fahrenheit Fahrenheit.");
  } else if (choice == 2) {
    print("Enter temperature in Fahrenheit: ");
    double fahrenheit = double.parse(stdin.readLineSync() ?? '');
    double celsius = fahrenheitToCelsius(fahrenheit);
    print("$fahrenheit Fahrenheit is equal to $celsius Celsius.");
  } else {
    print("Invalid choice.");
  }
}
