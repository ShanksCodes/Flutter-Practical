import 'package:flutter/material.dart';

void main() {
  runApp(NumberPickerApp());
}

class NumberPickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumberPickerScreen(),
    );
  }
}

class NumberPickerScreen extends StatefulWidget {
  @override
  _NumberPickerScreenState createState() => _NumberPickerScreenState();
}

class _NumberPickerScreenState extends State<NumberPickerScreen> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  TextEditingController sumController = TextEditingController();
  TextEditingController differenceController = TextEditingController();
  TextEditingController productController = TextEditingController();
  TextEditingController quotientController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter First Number'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Second Number'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                calculateValues();
              },
              child: Text('Compute'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: sumController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Sum'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: differenceController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Difference'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: productController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Product'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: quotientController,
              readOnly: true,
              decoration: InputDecoration(labelText: 'Quotient'),
            ),
          ],
        ),
      ),
    );
  }

  void calculateValues() {
    double firstNumber = double.tryParse(firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(secondNumberController.text) ?? 0.0;

    double sum = firstNumber + secondNumber;
    double difference = firstNumber - secondNumber;
    double product = firstNumber * secondNumber;

    // Avoid division by zero
    double quotient = secondNumber != 0.0 ? firstNumber / secondNumber : 0.0;

    sumController.text = sum.toStringAsFixed(2);
    differenceController.text = difference.toStringAsFixed(2);
    productController.text = product.toStringAsFixed(2);
    quotientController.text = quotient.toStringAsFixed(2);
  }
}
