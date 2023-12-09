import 'dart:convert';
import 'dart:io';

void main() {
  // Path to the JSON file
  String filePath = './jsonFile.json';

  // Take input from the user
  Map<String, dynamic> userData = getUserInput();

  // Write user input to the JSON file
  writeJsonToFile(filePath, userData);

  // Read data from the JSON file
  Map<String, dynamic> dataRead = readJsonFromFile(filePath);

  // Display the read data
  print('Data read from JSON file:');
  print(dataRead);
}

Map<String, dynamic> getUserInput() {
  print('\n\nEnter user data:');
  print('\nName:');
  String name = stdin.readLineSync() ?? '';
  
  print('\nAge:');
  int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print('\nCity:');
  String city = stdin.readLineSync() ?? '';

  return {
    'name': name,
    'age': age,
    'city': city,
  };
}

void writeJsonToFile(String filePath, Map<String, dynamic> data) {
  // Convert data to JSON string
  String jsonData = jsonEncode(data);

  // Open the file for writing
  File file = File(filePath);
  file.writeAsStringSync(jsonData);

  print('Data written to JSON file successfully.');
}

Map<String, dynamic> readJsonFromFile(String filePath) {
  // Check if the file exists
  File file = File(filePath);
  if (!file.existsSync()) {
    print('File does not exist. Returning an empty map.');
    return {};
  }

  // Read the JSON content from the file
  String jsonContent = file.readAsStringSync();

  // Parse the JSON string into a Map
  Map<String, dynamic> jsonData = jsonDecode(jsonContent);

  return jsonData;
}
