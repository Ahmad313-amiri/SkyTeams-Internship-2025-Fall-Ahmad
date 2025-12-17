/*
Name : Ahmad Amiri
Date : 2025-12-4

Question-29:Check if Two Arrays Are Equal
Description: Compare two arrays and determine if they contain the same elements in the same
order.
Example:
Input:
[1, 2, 3], [1, 2, 3]
Output:
Equal

*/


void main() {
  List<int> arr1 = [1, 2, 3];
  List<int> arr2 = [1, 2, 3];
  print(areArraysEqual(arr1, arr2));
}

String areArraysEqual(List<int> a, List<int> b) {
  if (a.length != b.length) return "Not Equal";

  for (int i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return "Not Equal";
  }

  return "Equal";
}
