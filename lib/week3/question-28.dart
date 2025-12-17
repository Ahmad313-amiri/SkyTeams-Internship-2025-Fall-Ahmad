/*
Name : Ahmad Amiri
Date : 2025-12-4

Question-28:  Remove Duplicates from an Array
Description: Remove duplicate elements efficiently from an array.
Example:
Input:
[3, 1, 3, 5, 1]
Output:
[3, 1, 5]
*/

void main() {
  List<int> arr = [1, 4, 3, 5, 1];
  print(removeDuplicates(arr));
}

List<int> removeDuplicates(List<int> list) {
  List<int> uniqueList = [];
  Map<int, bool> seen = {};

  for (int num in list) {
    if (seen[num] != true) {
      uniqueList.add(num);
      seen[num] = true;
    }
  }

  return uniqueList;
}
