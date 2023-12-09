import 'dart:io';

void main() {
  List<int> array1 = [];
  List<int> array2 = [];

  // Input for the first list
  print("Enter the elements for the first list (separated by spaces):");
  String input1 = stdin.readLineSync() ?? '';
  array1 = input1.split(' ').map((str) => int.tryParse(str) ?? 0).toList();

  // Input for the second list
  print("Enter the elements for the second list (separated by spaces):");
  String input2 = stdin.readLineSync() ?? '';
  array2 = input2.split(' ').map((str) => int.tryParse(str) ?? 0).toList();

  // Manually sort both arrays
  array1 = manualSort(array1);
  array2 = manualSort(array2);

  // Merge the sorted arrays
  List<int> result = mergeSortedArrays(array1, array2);

  print("Merged and Sorted Result: $result");
}

List<int> manualSort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j < list.length; j++) {
      if (list[i] > list[j]) {
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
  return list;
}

List<int> mergeSortedArrays(List<int> array1, List<int> array2) {
  List<int> result = [];

  int i = 0;
  int j = 0;

  while (i < array1.length && j < array2.length) {
    if (array1[i] < array2[j]) {
      result.add(array1[i]);
      i++;
    } else {
      result.add(array2[j]);
      j++;
    }
  }

  // Add any remaining elements from both arrays
  while (i < array1.length) {
    result.add(array1[i]);
    i++;
  }

  while (j < array2.length) {
    result.add(array2[j]);
    j++;
  }

  return result;
}
