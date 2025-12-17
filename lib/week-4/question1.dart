/*
Name : Ahmad Amiri
Date : 2025-12-6

Question-1: Find Second Largest Number in an Array
Description: Find the second largest number without sorting the array.
Example:
Input: [10, 20, 4, 45, 99]
Output: 45
*/

import 'dart:math';

void main() {
  List<int> numbers = [10, 20, 4, 45, 99];
  var secondLargest = findSecondLargest(numbers);
  print('Second Largest: $secondLargest');
}

int? findSecondLargest(List<int> list) {
  if (list.length < 2) return null;

  int? max1 = list[0];
  int? max2;

  for (int i = 1; i < list.length; i++) {
    int current = list[i];

    if (current > max1!) {
      max2 = max1;
      max1 = current;
    } else if (current != max1 && (max2 == null || current > max2)) {
      max2 = current;
    }
  }

  return max2;
}
