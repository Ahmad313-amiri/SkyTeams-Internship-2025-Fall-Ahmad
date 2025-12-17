/*

Name : Ahmad Amiri
Date : 2025-12-7

Question-6: Binary Search Algorithm
Description: Implement binary search in a sorted array.
Example:
Input: [1, 3, 5, 7, 9], Target = 7
Output: Found at index 3
*/

void main() {
  binarySearch([1, 3, 5, 7, 9], 7);
}

int binarySearch(List<int> list, int target) {
  int start = 0;
  int end = list.length - 1;

  while (start <= end) {
    int middle = (start + end) ~/ 2;

    if (list[middle] == target) {
      return middle;
    } else if (list[middle] < target) {
      start = middle + 1;
    } else {
      end = middle - 1;
    }
  }

  return -1;
}