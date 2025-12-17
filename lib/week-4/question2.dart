/*
Name : Ahmad Amiri
Date : 2025-12-6

Question-2: Merge Two Sorted Arrays
Description: Merge two sorted arrays into a single sorted array.
Example:
Input: [1, 3, 5], [2, 4, 6]
Output: [1, 2, 3, 4, 5, 6]
*/

void main() {
  var result = mergeList([1, 3, 4, 7], [2, 5, 6, 8]);
  print(result);
}

List<int> mergeList(List<int> list1, List<int> list2) {
  List<int> merged = [];

  int i = 0;
  int j = 0;

  while (i < list1.length && j < list2.length) {
    if (list1[i] < list2[j]) {
      merged.add(list1[i]);
      i++;
    } else {
      merged.add(list2[j]);
      j++;
    }


  }
  while (i < list1.length) {
    merged.add(list1[i]);
    i++;
  }

  while (j < list2.length) {
    merged.add(list2[j]);
    j++;
  }

  return merged;
}
