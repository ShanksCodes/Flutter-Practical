import 'package:flutter/material.dart';

void main() {
  runApp(TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemperatureConverterScreen(),
    );
  }
}

class TemperatureConverterScreen extends StatefulWidget {
  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState
    extends State<TemperatureConverterScreen> {
  TextEditingController userInputController = TextEditingController();
  TextEditingController resultController = TextEditingController();
  String selectedUnit = 'Celsius';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userInputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Temperature',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    selectUnit('Celsius');
                  },
                  child: Text('Celsius'),
                ),
                ElevatedButton(
                  onPressed: () {
                    selectUnit('Fahrenheit');
                  },
                  child: Text('Fahrenheit'),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                compute();
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: resultController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Converted Temperature',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectUnit(String unit) {
    setState(() {
      selectedUnit = unit;
    });
  }

  void compute() {
    double inputTemperature =
        double.tryParse(userInputController.text) ?? 0.0;

    double convertedTemperature;
    String unit;

    if (selectedUnit == 'Celsius') {
      convertedTemperature = (inputTemperature - 32) * 5 / 9;
      unit = 'Celsius';
    } else {
      convertedTemperature = (inputTemperature * 9 / 5) + 32;
      unit = 'Fahrenheit';
    }

    setState(() {
      resultController.text = '$convertedTemperature $unit';
    });
  }
}
